
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int mas2; } ;
typedef TYPE_1__ tlb_entry_t ;
struct tlbwrite_args {unsigned int idx; TYPE_1__* e; } ;
typedef int register_t ;


 int _TLB_ENTRY_SHARED ;
 int mb () ;
 int mfmsr () ;
 int smp_rendezvous (int ,int (*) (struct tlbwrite_args*),int ,struct tlbwrite_args*) ;
 scalar_t__ smp_started ;
 int tlb1_write_entry_int (struct tlbwrite_args*) ;
 int tlb1_write_entry_sync ;

__attribute__((used)) static void
tlb1_write_entry(tlb_entry_t *e, unsigned int idx)
{
 struct tlbwrite_args args;

 args.e = e;
 args.idx = idx;
 {
  register_t msr;

  msr = mfmsr();
  __asm __volatile("wrteei 0");
  tlb1_write_entry_int(&args);
  __asm __volatile("wrtee %0" :: "r"(msr));
 }
}
