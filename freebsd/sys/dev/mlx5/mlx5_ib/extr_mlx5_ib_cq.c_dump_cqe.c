
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_ib_dev {int dummy; } ;
struct mlx5_err_cqe {int dummy; } ;
typedef int __be32 ;


 int be32_to_cpu (int ) ;
 int mlx5_ib_warn (struct mlx5_ib_dev*,char*) ;
 int pr_info (char*,int ,int ,int ,int ) ;

__attribute__((used)) static void dump_cqe(struct mlx5_ib_dev *dev, struct mlx5_err_cqe *cqe)
{
 __be32 *p = (__be32 *)cqe;
 int i;

 mlx5_ib_warn(dev, "dump error cqe\n");
 for (i = 0; i < sizeof(*cqe) / 16; i++, p += 4)
  pr_info("%08x %08x %08x %08x\n", be32_to_cpu(p[0]),
   be32_to_cpu(p[1]), be32_to_cpu(p[2]),
   be32_to_cpu(p[3]));
}
