
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int vm_offset_t ;
typedef int mmu_t ;
struct TYPE_8__ {TYPE_3__* td_pcb; } ;
struct TYPE_5__ {int usr_segm; } ;
struct TYPE_6__ {TYPE_1__ aim; } ;
struct TYPE_7__ {TYPE_2__ pcb_cpu; } ;


 int ADDR_PIDX ;
 int ADDR_POFF ;
 int ADDR_SR_SHFT ;
 int USER_ADDR ;
 TYPE_4__* curthread ;

__attribute__((used)) static int
moea_decode_kernel_ptr(mmu_t mmu, vm_offset_t addr, int *is_user,
    vm_offset_t *decoded_addr)
{
 vm_offset_t user_sr;

 if ((addr >> ADDR_SR_SHFT) == (USER_ADDR >> ADDR_SR_SHFT)) {
  user_sr = curthread->td_pcb->pcb_cpu.aim.usr_segm;
  addr &= ADDR_PIDX | ADDR_POFF;
  addr |= user_sr << ADDR_SR_SHFT;
  *decoded_addr = addr;
  *is_user = 1;
 } else {
  *decoded_addr = addr;
  *is_user = 0;
 }

 return (0);
}
