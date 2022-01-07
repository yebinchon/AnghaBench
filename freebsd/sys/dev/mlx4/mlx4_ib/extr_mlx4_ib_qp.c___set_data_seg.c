
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx4_wqe_data_seg {int addr; void* lkey; void* byte_count; } ;
struct ib_sge {int addr; int lkey; int length; } ;


 void* cpu_to_be32 (int ) ;
 int cpu_to_be64 (int ) ;

__attribute__((used)) static void __set_data_seg(struct mlx4_wqe_data_seg *dseg, struct ib_sge *sg)
{
 dseg->byte_count = cpu_to_be32(sg->length);
 dseg->lkey = cpu_to_be32(sg->lkey);
 dseg->addr = cpu_to_be64(sg->addr);
}
