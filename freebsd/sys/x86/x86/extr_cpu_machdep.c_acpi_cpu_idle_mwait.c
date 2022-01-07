
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
typedef int uint32_t ;
struct TYPE_2__ {int idle_state; } ;


 int IA32_SPEC_CTRL_IBRS ;
 int IA32_SPEC_CTRL_SSBD ;
 int IA32_SPEC_CTRL_STIBP ;
 int KASSERT (int,char*) ;
 int MSR_IA32_SPEC_CTRL ;
 int MWAIT_INTRBREAK ;
 scalar_t__ PCPU_GET (int ) ;
 TYPE_1__* PCPU_PTR (int ) ;
 scalar_t__ STATE_MWAIT ;
 scalar_t__ STATE_RUNNING ;
 scalar_t__ STATE_SLEEPING ;
 scalar_t__ atomic_load_int (int*) ;
 int atomic_store_int (int*,scalar_t__) ;
 int cpu_monitor (int*,int ,int ) ;
 int cpu_mwait (int ,int ) ;
 scalar_t__ hw_ssb_active ;
 int ibpb_set ;
 int monitorbuf ;
 int rdmsr (int ) ;
 int wrmsr (int ,int) ;

void
acpi_cpu_idle_mwait(uint32_t mwait_hint)
{
 int *state;
 uint64_t v;
 state = &PCPU_PTR(monitorbuf)->idle_state;
 KASSERT(atomic_load_int(state) == STATE_SLEEPING,
     ("cpu_mwait_cx: wrong monitorbuf state"));
 atomic_store_int(state, STATE_MWAIT);
 if (PCPU_GET(ibpb_set) || hw_ssb_active) {
  v = rdmsr(MSR_IA32_SPEC_CTRL);
  wrmsr(MSR_IA32_SPEC_CTRL, v & ~(IA32_SPEC_CTRL_IBRS |
      IA32_SPEC_CTRL_STIBP | IA32_SPEC_CTRL_SSBD));
 } else {
  v = 0;
 }
 cpu_monitor(state, 0, 0);
 if (atomic_load_int(state) == STATE_MWAIT)
  cpu_mwait(MWAIT_INTRBREAK, mwait_hint);






 if (v != 0)
  wrmsr(MSR_IA32_SPEC_CTRL, v);





 atomic_store_int(state, STATE_RUNNING);
}
