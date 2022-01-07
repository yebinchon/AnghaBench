
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef int u32 ;
typedef scalar_t__ u16 ;
struct mlx5_core_dev {int dummy; } ;
typedef int in ;
struct TYPE_2__ {int vport_cvlan_strip; int vport_cvlan_insert; int cvlan_id; int cvlan_pcp; int cvlan_cfi; } ;


 scalar_t__ MLX5_MODIFY_ESW_VPORT_CONTEXT_CVLAN_INSERT_NONE ;
 scalar_t__ MLX5_MODIFY_ESW_VPORT_CONTEXT_FIELD_SELECT_CVLAN_INSERT ;
 scalar_t__ MLX5_MODIFY_ESW_VPORT_CONTEXT_FIELD_SELECT_CVLAN_STRIP ;
 int MLX5_SET (int ,int *,int ,scalar_t__) ;
 int MLX5_ST_SZ_DW (int ) ;
 TYPE_1__ esw_vport_context ;
 int field_select ;
 int memset (int *,int ,int) ;
 int mlx5_modify_eswitch_vport_context (struct mlx5_core_dev*,scalar_t__,int *,int) ;
 int modify_esw_vport_context_in ;

int mlx5_set_eswitch_cvlan_info(struct mlx5_core_dev *mdev, u8 vport,
    u8 insert_mode, u8 strip_mode,
    u16 vlan, u8 cfi, u8 pcp)
{
 u32 in[MLX5_ST_SZ_DW(modify_esw_vport_context_in)];

 memset(in, 0, sizeof(in));

 if (insert_mode != MLX5_MODIFY_ESW_VPORT_CONTEXT_CVLAN_INSERT_NONE) {
  MLX5_SET(modify_esw_vport_context_in, in,
    esw_vport_context.cvlan_cfi, cfi);
  MLX5_SET(modify_esw_vport_context_in, in,
    esw_vport_context.cvlan_pcp, pcp);
  MLX5_SET(modify_esw_vport_context_in, in,
    esw_vport_context.cvlan_id, vlan);
 }

 MLX5_SET(modify_esw_vport_context_in, in,
   esw_vport_context.vport_cvlan_insert, insert_mode);

 MLX5_SET(modify_esw_vport_context_in, in,
   esw_vport_context.vport_cvlan_strip, strip_mode);

 MLX5_SET(modify_esw_vport_context_in, in, field_select,
   MLX5_MODIFY_ESW_VPORT_CONTEXT_FIELD_SELECT_CVLAN_STRIP |
   MLX5_MODIFY_ESW_VPORT_CONTEXT_FIELD_SELECT_CVLAN_INSERT);

 return mlx5_modify_eswitch_vport_context(mdev, vport, in, sizeof(in));
}
