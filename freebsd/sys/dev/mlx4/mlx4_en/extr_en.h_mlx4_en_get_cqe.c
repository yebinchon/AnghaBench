
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mlx4_cqe {int dummy; } ;



__attribute__((used)) static inline struct mlx4_cqe *mlx4_en_get_cqe(u8 *buf, int idx, int cqe_sz)
{
 return (struct mlx4_cqe *)(buf + idx * cqe_sz);
}
