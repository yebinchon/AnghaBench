
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_core_dev {int dummy; } ;
struct firmware {int dummy; } ;


 int ENOENT ;
 int FIRMWARE_UNLOAD ;
 int TUNABLE_INT_FETCH (char*,int *) ;
 struct firmware* firmware_get (char*) ;
 int firmware_put (struct firmware const*,int ) ;
 int mlx5_auto_fw_update ;
 int mlx5_firmware_flash (struct mlx5_core_dev*,struct firmware const*) ;

__attribute__((used)) static int
mlx5_firmware_update(struct mlx5_core_dev *dev)
{
 const struct firmware *fw;
 int err;

 TUNABLE_INT_FETCH("hw.mlx5.auto_fw_update", &mlx5_auto_fw_update);
 if (!mlx5_auto_fw_update)
  return (0);
 fw = firmware_get("mlx5fw_mfa");
 if (fw) {
  err = mlx5_firmware_flash(dev, fw);
  firmware_put(fw, FIRMWARE_UNLOAD);
 }
 else
  return (-ENOENT);

 return err;
}
