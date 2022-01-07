
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct mlx5_fpga_device {struct mlx5_core_dev* mdev; } ;
struct TYPE_3__ {int mqp; int sgid_index; } ;
struct mlx5_fpga_conn {TYPE_1__ qp; int * fpga_qpc; int fpga_qpn; struct mlx5_fpga_device* fdev; } ;
struct mlx5_core_dev {int dummy; } ;
struct TYPE_4__ {int rgid_rip; int hop_limit; int src_addr_index; int udp_sport; int rmac_47_32; int port; int pkey_index; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int MLX5_ADDR_OF (int *,int *,int ) ;
 scalar_t__ MLX5_CAP_GEN (struct mlx5_core_dev*,int ) ;
 int MLX5_CAP_ROCE (struct mlx5_core_dev*,int ) ;
 int MLX5_CMD_OP_INIT2RTR_QP ;
 int MLX5_FLD_SZ_BYTES (int *,int ) ;
 int MLX5_FPGA_PKEY_INDEX ;
 int MLX5_FPGA_PORT_NUM ;
 int MLX5_GET (int *,int *,int ) ;
 int MLX5_QPC_MTU_1K_BYTES ;
 int MLX5_SET (int *,int *,int ,int ) ;
 int MLX5_ST_SZ_BYTES (int *) ;
 int ether_addr_copy (int ,int ) ;
 int fpga_ip ;
 int fpga_mac_47_32 ;
 int * fpga_qpc ;
 int kfree (int *) ;
 int * kzalloc (int ,int ) ;
 int log_max_msg ;
 int log_msg_max ;
 int memcpy (int ,int ,int ) ;
 int mlx5_core_qp_modify (struct mlx5_core_dev*,int ,int ,int *,int *) ;
 int mlx5_fpga_dbg (struct mlx5_fpga_device*,char*) ;
 int mlx5_fpga_warn (struct mlx5_fpga_device*,char*,int) ;
 int mtu ;
 int next_rcv_psn ;
 int next_send_psn ;
 TYPE_2__ primary_address_path ;
 int r_roce_min_src_udp_port ;
 int remote_qpn ;

__attribute__((used)) static inline int mlx5_fpga_conn_rtr_qp(struct mlx5_fpga_conn *conn)
{
 struct mlx5_fpga_device *fdev = conn->fdev;
 struct mlx5_core_dev *mdev = fdev->mdev;
 u32 *qpc = ((void*)0);
 int err;

 mlx5_fpga_dbg(conn->fdev, "QP RTR\n");

 qpc = kzalloc(MLX5_ST_SZ_BYTES(qpc), GFP_KERNEL);
 if (!qpc) {
  err = -ENOMEM;
  goto out;
 }

 MLX5_SET(qpc, qpc, mtu, MLX5_QPC_MTU_1K_BYTES);
 MLX5_SET(qpc, qpc, log_msg_max, (u8)MLX5_CAP_GEN(mdev, log_max_msg));
 MLX5_SET(qpc, qpc, remote_qpn, conn->fpga_qpn);
 MLX5_SET(qpc, qpc, next_rcv_psn,
   MLX5_GET(fpga_qpc, conn->fpga_qpc, next_send_psn));
 MLX5_SET(qpc, qpc, primary_address_path.pkey_index, MLX5_FPGA_PKEY_INDEX);
 MLX5_SET(qpc, qpc, primary_address_path.port, MLX5_FPGA_PORT_NUM);
 ether_addr_copy(MLX5_ADDR_OF(qpc, qpc, primary_address_path.rmac_47_32),
   MLX5_ADDR_OF(fpga_qpc, conn->fpga_qpc, fpga_mac_47_32));
 MLX5_SET(qpc, qpc, primary_address_path.udp_sport,
   MLX5_CAP_ROCE(mdev, r_roce_min_src_udp_port));
 MLX5_SET(qpc, qpc, primary_address_path.src_addr_index,
   conn->qp.sgid_index);
 MLX5_SET(qpc, qpc, primary_address_path.hop_limit, 0);
 memcpy(MLX5_ADDR_OF(qpc, qpc, primary_address_path.rgid_rip),
        MLX5_ADDR_OF(fpga_qpc, conn->fpga_qpc, fpga_ip),
        MLX5_FLD_SZ_BYTES(qpc, primary_address_path.rgid_rip));

 err = mlx5_core_qp_modify(mdev, MLX5_CMD_OP_INIT2RTR_QP, 0, qpc,
      &conn->qp.mqp);
 if (err) {
  mlx5_fpga_warn(fdev, "qp_modify RST2INIT failed: %d\n", err);
  goto out;
 }

out:
 kfree(qpc);
 return err;
}
