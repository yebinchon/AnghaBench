
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {struct fs_base* parent; } ;
struct mlx5_flow_rule {TYPE_1__ base; } ;
struct fs_fte {int val; } ;
struct fs_base {int dummy; } ;


 int WARN_ON (int) ;
 int fs_get_obj (struct fs_fte*,struct fs_base*) ;
 int memcpy (int *,int ,int) ;

void mlx5_get_match_value(u32 *match_value,
     struct mlx5_flow_rule *rule)
{
 struct fs_base *pbase;
 struct fs_fte *fte;

 pbase = rule->base.parent;
 WARN_ON(!pbase);
 fs_get_obj(fte, pbase);

 memcpy(match_value, fte->val, sizeof(fte->val));
}
