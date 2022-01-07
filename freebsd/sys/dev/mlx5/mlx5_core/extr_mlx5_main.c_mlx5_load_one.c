
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlx5_priv {int uuari; } ;
struct mlx5_core_dev {int intf_state_mutex; int state; int intf_state; TYPE_1__* pdev; } ;
struct TYPE_2__ {int dev; } ;


 int FW_INIT_TIMEOUT_MILI ;
 int FW_INIT_WARN_MESSAGE_INTERVAL ;
 int FW_PRE_INIT_TIMEOUT_MILI ;
 int MLX5_DEVICE_STATE_INTERNAL_ERROR ;
 int MLX5_DEVICE_STATE_UP ;
 int MLX5_INTERFACE_STATE_UP ;
 int alloc_comp_eqs (struct mlx5_core_dev*) ;
 int dev_err (int *,char*,int ) ;
 int free_comp_eqs (struct mlx5_core_dev*) ;
 int fw_rev_maj (struct mlx5_core_dev*) ;
 int fw_rev_min (struct mlx5_core_dev*) ;
 int fw_rev_sub (struct mlx5_core_dev*) ;
 int handle_hca_cap (struct mlx5_core_dev*) ;
 int handle_hca_cap_atomic (struct mlx5_core_dev*) ;
 scalar_t__ map_bf_area (struct mlx5_core_dev*) ;
 int mlx5_alloc_uuars (struct mlx5_core_dev*,int *) ;
 int mlx5_cleanup_fs (struct mlx5_core_dev*) ;
 int mlx5_cleanup_once (struct mlx5_core_dev*) ;
 int mlx5_cmd_cleanup (struct mlx5_core_dev*) ;
 int mlx5_cmd_init (struct mlx5_core_dev*) ;
 int mlx5_cmd_init_hca (struct mlx5_core_dev*) ;
 scalar_t__ mlx5_cmd_teardown_hca (struct mlx5_core_dev*) ;
 int mlx5_core_dbg (struct mlx5_core_dev*,char*,int ,int ,int ) ;
 int mlx5_core_disable_hca (struct mlx5_core_dev*) ;
 int mlx5_core_enable_hca (struct mlx5_core_dev*) ;
 int mlx5_core_err (struct mlx5_core_dev*,char*,...) ;
 int mlx5_core_set_issi (struct mlx5_core_dev*) ;
 int mlx5_core_warn (struct mlx5_core_dev*,char*) ;
 int mlx5_disable_msix (struct mlx5_core_dev*) ;
 int mlx5_enable_msix (struct mlx5_core_dev*) ;
 int mlx5_fpga_device_start (struct mlx5_core_dev*) ;
 int mlx5_fpga_device_stop (struct mlx5_core_dev*) ;
 int mlx5_free_uuars (struct mlx5_core_dev*,int *) ;
 int mlx5_init_fs (struct mlx5_core_dev*) ;
 scalar_t__ mlx5_init_once (struct mlx5_core_dev*,struct mlx5_priv*) ;
 int mlx5_mpfs_destroy (struct mlx5_core_dev*) ;
 int mlx5_mpfs_init (struct mlx5_core_dev*) ;
 int mlx5_pagealloc_start (struct mlx5_core_dev*) ;
 int mlx5_pagealloc_stop (struct mlx5_core_dev*) ;
 int mlx5_reclaim_startup_pages (struct mlx5_core_dev*) ;
 int mlx5_register_device (struct mlx5_core_dev*) ;
 int mlx5_satisfy_startup_pages (struct mlx5_core_dev*,int) ;
 int mlx5_start_eqs (struct mlx5_core_dev*) ;
 int mlx5_start_health_poll (struct mlx5_core_dev*) ;
 int mlx5_stop_eqs (struct mlx5_core_dev*) ;
 int mlx5_stop_health_poll (struct mlx5_core_dev*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int set_bit (int ,int *) ;
 int set_hca_ctrl (struct mlx5_core_dev*) ;
 scalar_t__ test_bit (int ,int *) ;
 int unmap_bf_area (struct mlx5_core_dev*) ;
 int wait_fw_init (struct mlx5_core_dev*,int ,int ) ;

__attribute__((used)) static int mlx5_load_one(struct mlx5_core_dev *dev, struct mlx5_priv *priv,
    bool boot)
{
 int err;

 mutex_lock(&dev->intf_state_mutex);
 if (test_bit(MLX5_INTERFACE_STATE_UP, &dev->intf_state)) {
  mlx5_core_warn(dev, "interface is up, NOP\n");
  goto out;
 }

 mlx5_core_dbg(dev, "firmware version: %d.%d.%d\n",
     fw_rev_maj(dev), fw_rev_min(dev), fw_rev_sub(dev));





 dev->state = MLX5_DEVICE_STATE_UP;



 err = wait_fw_init(dev, FW_PRE_INIT_TIMEOUT_MILI,
     FW_INIT_WARN_MESSAGE_INTERVAL);
 if (err) {
  dev_err(&dev->pdev->dev,
      "Firmware over %d MS in pre-initializing state, aborting\n",
      FW_PRE_INIT_TIMEOUT_MILI);
  goto out_err;
 }

 err = mlx5_cmd_init(dev);
 if (err) {
  mlx5_core_err(dev,
      "Failed initializing command interface, aborting\n");
  goto out_err;
 }

 err = wait_fw_init(dev, FW_INIT_TIMEOUT_MILI, 0);
 if (err) {
  mlx5_core_err(dev,
      "Firmware over %d MS in initializing state, aborting\n",
      FW_INIT_TIMEOUT_MILI);
  goto err_cmd_cleanup;
 }

 err = mlx5_core_enable_hca(dev);
 if (err) {
  mlx5_core_err(dev, "enable hca failed\n");
  goto err_cmd_cleanup;
 }

 err = mlx5_core_set_issi(dev);
 if (err) {
  mlx5_core_err(dev, "failed to set issi\n");
  goto err_disable_hca;
 }

 err = mlx5_pagealloc_start(dev);
 if (err) {
  mlx5_core_err(dev, "mlx5_pagealloc_start failed\n");
  goto err_disable_hca;
 }

 err = mlx5_satisfy_startup_pages(dev, 1);
 if (err) {
  mlx5_core_err(dev, "failed to allocate boot pages\n");
  goto err_pagealloc_stop;
 }

 err = set_hca_ctrl(dev);
 if (err) {
  mlx5_core_err(dev, "set_hca_ctrl failed\n");
  goto reclaim_boot_pages;
 }

 err = handle_hca_cap(dev);
 if (err) {
  mlx5_core_err(dev, "handle_hca_cap failed\n");
  goto reclaim_boot_pages;
 }

 err = handle_hca_cap_atomic(dev);
 if (err) {
  mlx5_core_err(dev, "handle_hca_cap_atomic failed\n");
  goto reclaim_boot_pages;
 }

 err = mlx5_satisfy_startup_pages(dev, 0);
 if (err) {
  mlx5_core_err(dev, "failed to allocate init pages\n");
  goto reclaim_boot_pages;
 }

 err = mlx5_cmd_init_hca(dev);
 if (err) {
  mlx5_core_err(dev, "init hca failed\n");
  goto reclaim_boot_pages;
 }

 mlx5_start_health_poll(dev);

 if (boot && mlx5_init_once(dev, priv)) {
  mlx5_core_err(dev, "sw objs init failed\n");
  goto err_stop_poll;
 }

 err = mlx5_enable_msix(dev);
 if (err) {
  mlx5_core_err(dev, "enable msix failed\n");
  goto err_cleanup_once;
 }

 err = mlx5_alloc_uuars(dev, &priv->uuari);
 if (err) {
  mlx5_core_err(dev, "Failed allocating uar, aborting\n");
  goto err_disable_msix;
 }

 err = mlx5_start_eqs(dev);
 if (err) {
  mlx5_core_err(dev, "Failed to start pages and async EQs\n");
  goto err_free_uar;
 }

 err = alloc_comp_eqs(dev);
 if (err) {
  mlx5_core_err(dev, "Failed to alloc completion EQs\n");
  goto err_stop_eqs;
 }

 if (map_bf_area(dev))
  mlx5_core_err(dev, "Failed to map blue flame area\n");

 err = mlx5_init_fs(dev);
 if (err) {
  mlx5_core_err(dev, "flow steering init %d\n", err);
  goto err_free_comp_eqs;
 }

 err = mlx5_mpfs_init(dev);
 if (err) {
  mlx5_core_err(dev, "mpfs init failed %d\n", err);
  goto err_fs;
 }

 err = mlx5_fpga_device_start(dev);
 if (err) {
  mlx5_core_err(dev, "fpga device start failed %d\n", err);
  goto err_mpfs;
 }

 err = mlx5_register_device(dev);
 if (err) {
  mlx5_core_err(dev, "mlx5_register_device failed %d\n", err);
  goto err_fpga;
 }

 set_bit(MLX5_INTERFACE_STATE_UP, &dev->intf_state);

out:
 mutex_unlock(&dev->intf_state_mutex);
 return 0;

err_fpga:
 mlx5_fpga_device_stop(dev);

err_mpfs:
 mlx5_mpfs_destroy(dev);

err_fs:
 mlx5_cleanup_fs(dev);

err_free_comp_eqs:
 free_comp_eqs(dev);
 unmap_bf_area(dev);

err_stop_eqs:
 mlx5_stop_eqs(dev);

err_free_uar:
 mlx5_free_uuars(dev, &priv->uuari);

err_disable_msix:
 mlx5_disable_msix(dev);

err_cleanup_once:
 if (boot)
  mlx5_cleanup_once(dev);

err_stop_poll:
 mlx5_stop_health_poll(dev, boot);
 if (mlx5_cmd_teardown_hca(dev)) {
  mlx5_core_err(dev, "tear_down_hca failed, skip cleanup\n");
  goto out_err;
 }

reclaim_boot_pages:
 mlx5_reclaim_startup_pages(dev);

err_pagealloc_stop:
 mlx5_pagealloc_stop(dev);

err_disable_hca:
 mlx5_core_disable_hca(dev);

err_cmd_cleanup:
 mlx5_cmd_cleanup(dev);

out_err:
 dev->state = MLX5_DEVICE_STATE_INTERNAL_ERROR;
 mutex_unlock(&dev->intf_state_mutex);

 return err;
}
