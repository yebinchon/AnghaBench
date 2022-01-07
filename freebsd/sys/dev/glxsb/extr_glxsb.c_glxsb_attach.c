
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct glxsb_softc {int sc_rnghz; int * sc_sr; int sc_rid; int * sc_tq; int sc_rngco; int sc_cryptotask; int sc_dev; } ;
typedef int device_t ;


 int ENXIO ;
 int M_NOWAIT ;
 int M_ZERO ;
 int PCIR_BAR (int ) ;
 int PI_NET ;
 int RF_ACTIVE ;
 int SB_AES_INT ;
 int SB_AI_CLEAR_INTR ;
 int SB_GLD_MSR_CAP ;
 int SB_GLD_MSR_CTRL ;
 int SB_GMC_SBI ;
 int SB_GMC_SBY ;
 int SB_GMC_T_NE ;
 int SB_GMC_T_SEL3 ;
 int SB_GMC_T_SEL_MASK ;
 int SB_GMC_T_TM ;
 int SYS_RES_MEMORY ;
 int TASK_INIT (int *,int ,int ,struct glxsb_softc*) ;
 int * bus_alloc_resource_any (int ,int ,int *,int ) ;
 int bus_release_resource (int ,int ,int ,int *) ;
 int bus_write_4 (int *,int ,int ) ;
 int callout_init (int *,int) ;
 int device_get_nameunit (int ) ;
 struct glxsb_softc* device_get_softc (int ) ;
 int device_printf (int ,char*,...) ;
 scalar_t__ glxsb_crypto_setup (struct glxsb_softc*) ;
 int glxsb_crypto_task ;
 scalar_t__ glxsb_dma_alloc (struct glxsb_softc*) ;
 int glxsb_rnd (struct glxsb_softc*) ;
 int hz ;
 int pci_enable_busmaster (int ) ;
 int rdmsr (int ) ;
 int * taskqueue_create (char*,int,int ,int **) ;
 int taskqueue_free (int *) ;
 scalar_t__ taskqueue_start_threads (int **,int,int ,char*,int ) ;
 int taskqueue_thread_enqueue ;
 int wrmsr (int ,int) ;

__attribute__((used)) static int
glxsb_attach(device_t dev)
{
 struct glxsb_softc *sc = device_get_softc(dev);
 uint64_t msr;

 sc->sc_dev = dev;
 msr = rdmsr(SB_GLD_MSR_CAP);

 if ((msr & 0xFFFF00) != 0x130400) {
  device_printf(dev, "unknown ID 0x%x\n",
      (int)((msr & 0xFFFF00) >> 16));
  return (ENXIO);
 }

 pci_enable_busmaster(dev);


 sc->sc_rid = PCIR_BAR(0);
 sc->sc_sr = bus_alloc_resource_any(dev, SYS_RES_MEMORY, &sc->sc_rid,
     RF_ACTIVE);
 if (sc->sc_sr == ((void*)0)) {
  device_printf(dev, "cannot map register space\n");
  return (ENXIO);
 }
 msr = rdmsr(SB_GLD_MSR_CTRL);
 msr &= ~(SB_GMC_T_TM | SB_GMC_T_SEL_MASK);
 msr |= SB_GMC_T_NE | SB_GMC_T_SEL3;



 wrmsr(SB_GLD_MSR_CTRL, msr);


 bus_write_4(sc->sc_sr, SB_AES_INT, SB_AI_CLEAR_INTR);


 if (glxsb_dma_alloc(sc) != 0)
  goto fail0;


 sc->sc_tq = taskqueue_create("glxsb_taskq", M_NOWAIT | M_ZERO,
     taskqueue_thread_enqueue, &sc->sc_tq);
 if (sc->sc_tq == ((void*)0)) {
  device_printf(dev, "cannot create task queue\n");
  goto fail0;
 }
 if (taskqueue_start_threads(&sc->sc_tq, 1, PI_NET, "%s taskq",
     device_get_nameunit(dev)) != 0) {
  device_printf(dev, "cannot start task queue\n");
  goto fail1;
 }
 TASK_INIT(&sc->sc_cryptotask, 0, glxsb_crypto_task, sc);


 if (glxsb_crypto_setup(sc) != 0)
  goto fail1;


 if (hz > 100)
  sc->sc_rnghz = hz / 100;
 else
  sc->sc_rnghz = 1;
 callout_init(&sc->sc_rngco, 1);
 glxsb_rnd(sc);

 return (0);

fail1:
 taskqueue_free(sc->sc_tq);
fail0:
 bus_release_resource(dev, SYS_RES_MEMORY, sc->sc_rid, sc->sc_sr);
 return (ENXIO);
}
