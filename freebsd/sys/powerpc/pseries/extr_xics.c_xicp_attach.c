
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xicp_softc {int* cpu_range; int xics_emu; scalar_t__ nintvecs; int sc_mtx; int ** mem; void* ibm_get_xive; void* ibm_set_xive; void* ibm_int_off; void* ibm_int_on; } ;
typedef int phandle_t ;
typedef int device_t ;
struct TYPE_2__ {int pc_hwref; } ;


 int ENXIO ;
 int FALSE ;
 int MAX_XICP_IRQS ;
 int MTX_DEF ;
 int OF_getencprop (int ,char*,int*,int) ;
 scalar_t__ OF_hasprop (int ,char*) ;
 int OF_xref_from_node (int ) ;
 int OPAL_INT_SET_CPPR ;
 int OPAL_INT_SET_MFRR ;
 int OPAL_XIVE_RESET ;
 int OPAL_XIVE_XICS_MODE_EMU ;
 int PSL_HV ;
 int RF_ACTIVE ;
 int SYS_RES_MEMORY ;
 int * bus_alloc_resource_any (int ,int ,int*,int ) ;
 int bus_write_1 (int *,int,int) ;
 struct xicp_softc* device_get_softc (int ) ;
 int device_printf (int ,char*,...) ;
 int mfmsr () ;
 int mp_ncpus ;
 int mtx_init (int *,char*,int *,int ) ;
 int ofw_bus_get_node (int ) ;
 scalar_t__ ofw_bus_is_compatible (int ,char*) ;
 int opal_call (int ,int,...) ;
 scalar_t__ opal_check () ;
 TYPE_1__* pcpu_find (int) ;
 int powernv_smp_ap_extra_init ;
 int powerpc_register_pic (int ,int ,int ,int,int ) ;
 int root_pic ;
 scalar_t__ rtas_exists () ;
 void* rtas_token_lookup (char*) ;
 int xicp_smp_cpu_startup ;

__attribute__((used)) static int
xicp_attach(device_t dev)
{
 struct xicp_softc *sc = device_get_softc(dev);
 phandle_t phandle = ofw_bus_get_node(dev);

 if (rtas_exists()) {
  sc->ibm_int_on = rtas_token_lookup("ibm,int-on");
  sc->ibm_int_off = rtas_token_lookup("ibm,int-off");
  sc->ibm_set_xive = rtas_token_lookup("ibm,set-xive");
  sc->ibm_get_xive = rtas_token_lookup("ibm,get-xive");




 } else {
  device_printf(dev, "Cannot attach without RTAS or OPAL\n");
  return (ENXIO);
 }

 if (OF_hasprop(phandle, "ibm,interrupt-server-ranges")) {
  OF_getencprop(phandle, "ibm,interrupt-server-ranges",
      sc->cpu_range, sizeof(sc->cpu_range));
  sc->cpu_range[1] += sc->cpu_range[0];
  device_printf(dev, "Handling CPUs %d-%d\n", sc->cpu_range[0],
      sc->cpu_range[1]-1);
 } else {
  sc->cpu_range[0] = 0;
  sc->cpu_range[1] = mp_ncpus;
 }
 mtx_init(&sc->sc_mtx, "XICP", ((void*)0), MTX_DEF);
 sc->nintvecs = 0;

 powerpc_register_pic(dev, OF_xref_from_node(phandle), MAX_XICP_IRQS,
     1 , FALSE);
 root_pic = dev;






 return (0);
}
