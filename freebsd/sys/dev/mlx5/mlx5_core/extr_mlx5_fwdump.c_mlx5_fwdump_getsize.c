
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_crspace_regmap {scalar_t__ cnt; } ;



__attribute__((used)) static unsigned
mlx5_fwdump_getsize(const struct mlx5_crspace_regmap *rege)
{
 const struct mlx5_crspace_regmap *r;
 unsigned sz;

 for (sz = 0, r = rege; r->cnt != 0; r++)
  sz += r->cnt;
 return (sz);
}
