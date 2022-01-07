
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct bge_softc {int bge_mfw_flags; int bge_dev; } ;


 int APE_READ_4 (struct bge_softc*,int ) ;
 int APE_WRITE_4 (struct bge_softc*,int ,int) ;
 int BGE_APE_EVENT ;
 int BGE_APE_EVENT_1 ;
 int BGE_APE_EVENT_STATUS ;
 int BGE_APE_EVENT_STATUS_EVENT_PENDING ;
 int BGE_APE_LOCK_MEM ;
 int BGE_MFW_ON_APE ;
 int DELAY (int) ;
 scalar_t__ bge_ape_lock (struct bge_softc*,int ) ;
 int bge_ape_unlock (struct bge_softc*,int ) ;
 int device_printf (int ,char*,int) ;

__attribute__((used)) static void
bge_ape_send_event(struct bge_softc *sc, uint32_t event)
{
 uint32_t apedata;
 int i;


 if ((sc->bge_mfw_flags & BGE_MFW_ON_APE) == 0)
  return;


 for (i = 10; i > 0; i--) {
  if (bge_ape_lock(sc, BGE_APE_LOCK_MEM) != 0)
   break;
  apedata = APE_READ_4(sc, BGE_APE_EVENT_STATUS);
  if ((apedata & BGE_APE_EVENT_STATUS_EVENT_PENDING) == 0) {
   APE_WRITE_4(sc, BGE_APE_EVENT_STATUS, event |
       BGE_APE_EVENT_STATUS_EVENT_PENDING);
   bge_ape_unlock(sc, BGE_APE_LOCK_MEM);
   APE_WRITE_4(sc, BGE_APE_EVENT, BGE_APE_EVENT_1);
   break;
  }
  bge_ape_unlock(sc, BGE_APE_LOCK_MEM);
  DELAY(100);
 }
 if (i == 0)
  device_printf(sc->bge_dev, "APE event 0x%08x send timed out\n",
      event);
}
