
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union ib_flow_spec {int type; int size; } ;
struct mlx4_ib_dev {int dev; } ;
struct ib_qp {int dummy; } ;
struct ib_flow_spec_ib {int dummy; } ;
struct default_rules {int* rules_create_list; } ;
struct _rule_hw {int dummy; } ;


 int ARRAY_SIZE (int*) ;
 int EINVAL ;

 int parse_flow_attr (int ,int ,union ib_flow_spec*,struct _rule_hw*) ;
 int pr_info (char*) ;

__attribute__((used)) static int __mlx4_ib_create_default_rules(
  struct mlx4_ib_dev *mdev,
  struct ib_qp *qp,
  const struct default_rules *pdefault_rules,
  struct _rule_hw *mlx4_spec) {
 int size = 0;
 int i;

 for (i = 0; i < ARRAY_SIZE(pdefault_rules->rules_create_list); i++) {
  int ret;
  union ib_flow_spec ib_spec;
  switch (pdefault_rules->rules_create_list[i]) {
  case 0:

   continue;
  case 128:
   ib_spec.type = 128;
   ib_spec.size = sizeof(struct ib_flow_spec_ib);

   break;
  default:

   return -EINVAL;
  }

  ret = parse_flow_attr(mdev->dev, 0, &ib_spec,
          mlx4_spec);
  if (ret < 0) {
   pr_info("invalid parsing\n");
   return -EINVAL;
  }

  mlx4_spec = (void *)mlx4_spec + ret;
  size += ret;
 }
 return size;
}
