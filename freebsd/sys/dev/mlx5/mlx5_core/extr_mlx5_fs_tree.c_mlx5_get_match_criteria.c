
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {struct fs_base* parent; } ;
struct mlx5_flow_rule {TYPE_1__ base; } ;
struct TYPE_4__ {int match_criteria; } ;
struct mlx5_flow_group {TYPE_2__ mask; } ;
struct fs_base {struct fs_base* parent; } ;


 int WARN_ON (int) ;
 int fs_get_obj (struct mlx5_flow_group*,struct fs_base*) ;
 int memcpy (int *,int *,int) ;

void mlx5_get_match_criteria(u32 *match_criteria,
        struct mlx5_flow_rule *rule)
{
 struct fs_base *pbase;
 struct mlx5_flow_group *fg;

 pbase = rule->base.parent;
 WARN_ON(!pbase);
 pbase = pbase->parent;
 WARN_ON(!pbase);

 fs_get_obj(fg, pbase);
 memcpy(match_criteria, &fg->mask.match_criteria,
        sizeof(fg->mask.match_criteria));
}
