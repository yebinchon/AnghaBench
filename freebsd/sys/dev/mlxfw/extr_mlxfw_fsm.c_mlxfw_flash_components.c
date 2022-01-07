
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mlxfw_mfa2_file {int dummy; } ;
struct mlxfw_mfa2_component {int index; } ;
struct mlxfw_dev {int psid_size; int psid; } ;


 scalar_t__ IS_ERR (struct mlxfw_mfa2_component*) ;
 int PTR_ERR (struct mlxfw_mfa2_component*) ;
 int mlxfw_flash_component (struct mlxfw_dev*,int,struct mlxfw_mfa2_component*) ;
 int mlxfw_mfa2_file_component_count (struct mlxfw_mfa2_file*,int ,int ,int*) ;
 struct mlxfw_mfa2_component* mlxfw_mfa2_file_component_get (struct mlxfw_mfa2_file*,int ,int ,int) ;
 int mlxfw_mfa2_file_component_put (struct mlxfw_mfa2_component*) ;
 int pr_err (char*) ;
 int pr_info (char*,int ) ;

__attribute__((used)) static int mlxfw_flash_components(struct mlxfw_dev *mlxfw_dev, u32 fwhandle,
      struct mlxfw_mfa2_file *mfa2_file)
{
 u32 component_count;
 int err;
 int i;

 err = mlxfw_mfa2_file_component_count(mfa2_file, mlxfw_dev->psid,
           mlxfw_dev->psid_size,
           &component_count);
 if (err) {
  pr_err("Could not find device PSID in MFA2 file\n");
  return err;
 }

 for (i = 0; i < component_count; i++) {
  struct mlxfw_mfa2_component *comp;

  comp = mlxfw_mfa2_file_component_get(mfa2_file, mlxfw_dev->psid,
           mlxfw_dev->psid_size, i);
  if (IS_ERR(comp))
   return PTR_ERR(comp);

  pr_info("Flashing component type %d\n", comp->index);
  err = mlxfw_flash_component(mlxfw_dev, fwhandle, comp);
  mlxfw_mfa2_file_component_put(comp);
  if (err)
   return err;
 }
 return 0;
}
