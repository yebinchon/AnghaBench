
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx4_wqe_data_seg {int dummy; } ;
typedef int __be32 ;



__attribute__((used)) static void
mlx4_en_store_inline_lso_header(volatile struct mlx4_wqe_data_seg *dseg,
    int len, __be32 owner_bit)
{
}
