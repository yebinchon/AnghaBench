
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cmpl_base {int info3_v; } ;
struct TYPE_2__ {int ring_size; scalar_t__ vaddr; } ;
struct bnxt_cp_ring {int v_bit; TYPE_1__ ring; } ;



__attribute__((used)) static void
bnxt_mark_cpr_invalid(struct bnxt_cp_ring *cpr)
{
 struct cmpl_base *cmp = (void *)cpr->ring.vaddr;
 int i;

 for (i = 0; i < cpr->ring.ring_size; i++)
  cmp[i].info3_v = !cpr->v_bit;
}
