
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_char ;
typedef TYPE_1__* proc_entry_ptr ;
struct TYPE_2__ {int cpu_flags; int apic_id; } ;


 int MAXCPU ;
 int MAX_LAPIC_ID ;

 int PROCENTRY_FLAG_EN ;
 int max (int ,int ) ;
 int max_apic_id ;
 int mp_maxid ;
 int mp_ncpus ;

__attribute__((used)) static void
mptable_probe_cpus_handler(u_char *entry, void *arg)
{
 proc_entry_ptr proc;

 switch (*entry) {
 case 128:
  proc = (proc_entry_ptr)entry;
  if (proc->cpu_flags & PROCENTRY_FLAG_EN &&
      proc->apic_id < MAX_LAPIC_ID && mp_ncpus < MAXCPU) {




   max_apic_id = max(max_apic_id, proc->apic_id);
  }
  break;
 }
}
