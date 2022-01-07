
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sec_softc {int sc_shutdown; int sc_descriptors_lock; int sc_controller_lock; int * sc_rres; int sc_rrid; int sc_sec_irid; int sc_sec_ihand; int sc_sec_ires; int sc_pri_irid; int sc_pri_ihand; int sc_pri_ires; int sc_desc_dmem; int sc_lt_dmem; int * sc_desc; int sc_cid; } ;
typedef int device_t ;


 int DELAY (int) ;
 int SEC_CHANNELS ;
 int SEC_DESCRIPTORS ;
 int SEC_DESC_FREE_POINTERS (int *) ;
 int SEC_IER ;
 int SEC_LOCK (struct sec_softc*,int ) ;
 int SEC_QUEUED_DESC_CNT (struct sec_softc*) ;
 int SEC_READY_DESC_CNT (struct sec_softc*) ;
 int SEC_TIMEOUT ;
 int SEC_UNLOCK (struct sec_softc*,int ) ;
 int SEC_WRITE (struct sec_softc*,int ,int ) ;
 int SYS_RES_MEMORY ;
 int bus_release_resource (int ,int ,int ,int *) ;
 int crypto_unregister_all (int ) ;
 int descriptors ;
 struct sec_softc* device_get_softc (int ) ;
 int device_printf (int ,char*,...) ;
 int mtx_destroy (int *) ;
 int sec_channel_reset (struct sec_softc*,int,int) ;
 int sec_free_dma_mem (int *) ;
 int sec_release_intr (struct sec_softc*,int ,int ,int ,char*) ;

__attribute__((used)) static int
sec_detach(device_t dev)
{
 struct sec_softc *sc = device_get_softc(dev);
 int i, error, timeout = SEC_TIMEOUT;


 SEC_LOCK(sc, descriptors);
 sc->sc_shutdown = 1;
 SEC_UNLOCK(sc, descriptors);


 while (1) {
  SEC_LOCK(sc, descriptors);
  i = SEC_READY_DESC_CNT(sc) + SEC_QUEUED_DESC_CNT(sc);
  SEC_UNLOCK(sc, descriptors);

  if (i == 0)
   break;

  if (timeout < 0) {
   device_printf(dev, "queue flush timeout!\n");


   for (i = 0; i < SEC_CHANNELS; i++)
    sec_channel_reset(sc, i, 1);

   break;
  }

  timeout -= 1000;
  DELAY(1000);
 }


 SEC_WRITE(sc, SEC_IER, 0);


 crypto_unregister_all(sc->sc_cid);


 for (i = 0; i < SEC_DESCRIPTORS; i++)
  SEC_DESC_FREE_POINTERS(&(sc->sc_desc[i]));

 sec_free_dma_mem(&(sc->sc_lt_dmem));
 sec_free_dma_mem(&(sc->sc_desc_dmem));


 sec_release_intr(sc, sc->sc_pri_ires, sc->sc_pri_ihand,
     sc->sc_pri_irid, "primary");
 sec_release_intr(sc, sc->sc_sec_ires, sc->sc_sec_ihand,
     sc->sc_sec_irid, "secondary");


 if (sc->sc_rres) {
  error = bus_release_resource(dev, SYS_RES_MEMORY, sc->sc_rrid,
      sc->sc_rres);
  if (error)
   device_printf(dev, "bus_release_resource() failed for"
       " I/O memory, error %d\n", error);

  sc->sc_rres = ((void*)0);
 }

 mtx_destroy(&sc->sc_controller_lock);
 mtx_destroy(&sc->sc_descriptors_lock);

 return (0);
}
