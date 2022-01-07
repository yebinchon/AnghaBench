
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dpaa_portals_softc {TYPE_1__* sc_dp; int * sc_rres; } ;
struct TYPE_2__ {int dp_regs_mapped; int dp_ci_size; int dp_ci_pa; int dp_ce_size; int dp_ce_pa; } ;


 unsigned int PCPU_GET (int ) ;
 int _TLB_ENTRY_IO ;
 int _TLB_ENTRY_MEM ;
 int cpuid ;
 int rman_get_bushandle (int ) ;
 int sched_pin () ;
 int sched_unpin () ;
 int tlb1_set_entry (int ,int ,int ,int ) ;

void
dpaa_portal_map_registers(struct dpaa_portals_softc *sc)
{
 unsigned int cpu;

 sched_pin();
 cpu = PCPU_GET(cpuid);
 if (sc->sc_dp[cpu].dp_regs_mapped)
  goto out;

 tlb1_set_entry(rman_get_bushandle(sc->sc_rres[0]),
     sc->sc_dp[cpu].dp_ce_pa, sc->sc_dp[cpu].dp_ce_size,
     _TLB_ENTRY_MEM);
 tlb1_set_entry(rman_get_bushandle(sc->sc_rres[1]),
     sc->sc_dp[cpu].dp_ci_pa, sc->sc_dp[cpu].dp_ci_size,
     _TLB_ENTRY_IO);

 sc->sc_dp[cpu].dp_regs_mapped = 1;

out:
 sched_unpin();
}
