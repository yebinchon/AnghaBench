
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct node_caps {int arr_sz; int * caps; } ;
struct mlx5_core_dev {int dummy; } ;


 int GET_FLOW_TABLE_CAP (struct mlx5_core_dev*,int ) ;

__attribute__((used)) static bool has_required_caps(struct mlx5_core_dev *dev, struct node_caps *caps)
{
 int i;

 for (i = 0; i < caps->arr_sz; i++) {
  if (!GET_FLOW_TABLE_CAP(dev, caps->caps[i]))
   return 0;
 }
 return 1;
}
