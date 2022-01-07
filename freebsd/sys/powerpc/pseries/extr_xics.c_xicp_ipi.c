
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
typedef scalar_t__ u_int ;
struct xicp_softc {scalar_t__ xics_emu; } ;
typedef scalar_t__ int64_t ;
typedef int device_t ;
struct TYPE_2__ {scalar_t__ pc_hwref; } ;


 int H_IPI ;
 int OPAL_INT_SET_MFRR ;
 int PSL_HV ;
 int XICP_PRIORITY ;
 int bus_write_1 (int ,int,int ) ;
 struct xicp_softc* device_get_softc (int ) ;
 int device_printf (int ,char*,scalar_t__) ;
 int mfmsr () ;
 scalar_t__ opal_call (int ,scalar_t__,int ) ;
 TYPE_1__* pcpu_find (scalar_t__) ;
 int phyp_hcall (int ,int ,int ) ;
 int xicp_mem_for_cpu (scalar_t__) ;

__attribute__((used)) static void
xicp_ipi(device_t dev, u_int cpu)
{
  phyp_hcall(H_IPI, (uint64_t)cpu, XICP_PRIORITY);
}
