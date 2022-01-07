
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlx4_wqe_atomic_seg {void* compare; void* swap_add; } ;
struct TYPE_2__ {scalar_t__ opcode; } ;
struct ib_atomic_wr {int compare_add; int compare_add_mask; TYPE_1__ wr; int swap; } ;


 scalar_t__ IB_WR_ATOMIC_CMP_AND_SWP ;
 scalar_t__ IB_WR_MASKED_ATOMIC_FETCH_AND_ADD ;
 void* cpu_to_be64 (int ) ;

__attribute__((used)) static void set_atomic_seg(struct mlx4_wqe_atomic_seg *aseg,
  struct ib_atomic_wr *wr)
{
 if (wr->wr.opcode == IB_WR_ATOMIC_CMP_AND_SWP) {
  aseg->swap_add = cpu_to_be64(wr->swap);
  aseg->compare = cpu_to_be64(wr->compare_add);
 } else if (wr->wr.opcode == IB_WR_MASKED_ATOMIC_FETCH_AND_ADD) {
  aseg->swap_add = cpu_to_be64(wr->compare_add);
  aseg->compare = cpu_to_be64(wr->compare_add_mask);
 } else {
  aseg->swap_add = cpu_to_be64(wr->compare_add);
  aseg->compare = 0;
 }

}
