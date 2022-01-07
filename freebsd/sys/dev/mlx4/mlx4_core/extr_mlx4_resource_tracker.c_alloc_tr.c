
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct res_common {int owner; } ;
typedef enum mlx4_resource { ____Placeholder_mlx4_resource } mlx4_resource ;
 struct res_common* alloc_counter_tr (int ,int) ;
 struct res_common* alloc_cq_tr (int ) ;
 struct res_common* alloc_eq_tr (int ) ;
 struct res_common* alloc_fs_rule_tr (int ,int) ;
 struct res_common* alloc_mpt_tr (int ,int) ;
 struct res_common* alloc_mtt_tr (int ,int) ;
 struct res_common* alloc_qp_tr (int ) ;
 struct res_common* alloc_srq_tr (int ) ;
 struct res_common* alloc_xrcdn_tr (int ) ;
 int pr_err (char*) ;

__attribute__((used)) static struct res_common *alloc_tr(u64 id, enum mlx4_resource type, int slave,
       int extra)
{
 struct res_common *ret;

 switch (type) {
 case 130:
  ret = alloc_qp_tr(id);
  break;
 case 132:
  ret = alloc_mpt_tr(id, extra);
  break;
 case 131:
  ret = alloc_mtt_tr(id, extra);
  break;
 case 135:
  ret = alloc_eq_tr(id);
  break;
 case 136:
  ret = alloc_cq_tr(id);
  break;
 case 129:
  ret = alloc_srq_tr(id);
  break;
 case 133:
  pr_err("implementation missing\n");
  return ((void*)0);
 case 137:
  ret = alloc_counter_tr(id, extra);
  break;
 case 128:
  ret = alloc_xrcdn_tr(id);
  break;
 case 134:
  ret = alloc_fs_rule_tr(id, extra);
  break;
 default:
  return ((void*)0);
 }
 if (ret)
  ret->owner = slave;

 return ret;
}
