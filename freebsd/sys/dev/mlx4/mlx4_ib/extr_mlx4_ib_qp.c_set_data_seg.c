
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx4_wqe_data_seg {void* byte_count; int addr; void* lkey; } ;
struct ib_sge {int length; int addr; int lkey; } ;


 void* cpu_to_be32 (int ) ;
 int cpu_to_be64 (int ) ;
 int wmb () ;

__attribute__((used)) static void set_data_seg(struct mlx4_wqe_data_seg *dseg, struct ib_sge *sg)
{
 dseg->lkey = cpu_to_be32(sg->lkey);
 dseg->addr = cpu_to_be64(sg->addr);
 wmb();

 dseg->byte_count = cpu_to_be32(sg->length);
}
