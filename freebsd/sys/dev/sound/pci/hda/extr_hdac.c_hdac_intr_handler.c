
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct hdac_softc {scalar_t__ unsolq_rp; scalar_t__ unsolq_wp; int num_ss; int mem; TYPE_1__* streams; int unsolq_task; } ;
typedef int * device_t ;
struct TYPE_2__ {int stream; int dir; int * dev; } ;


 int HDAC_INTSTS ;
 int HDAC_INTSTS_CIS ;
 int HDAC_INTSTS_GIS ;
 int HDAC_INTSTS_SIS_MASK ;
 int HDAC_READ_1 (int *,scalar_t__) ;
 int HDAC_READ_4 (int *,int ) ;
 scalar_t__ HDAC_RIRBSTS ;
 int HDAC_RIRBSTS_RINTFL ;
 scalar_t__ HDAC_SDSTS ;
 int HDAC_SDSTS_BCIS ;
 int HDAC_SDSTS_DESE ;
 int HDAC_SDSTS_FIFOE ;
 int HDAC_STREAM_INTR (int *,int ,int ) ;
 int HDAC_WRITE_1 (int *,scalar_t__,int) ;
 int HDAC_WRITE_4 (int *,int ,int) ;
 int hdac_lock (struct hdac_softc*) ;
 int hdac_rirb_flush (struct hdac_softc*) ;
 int hdac_unlock (struct hdac_softc*) ;
 int taskqueue_enqueue (int ,int *) ;
 int taskqueue_thread ;

__attribute__((used)) static void
hdac_intr_handler(void *context)
{
 struct hdac_softc *sc;
 device_t dev;
 uint32_t intsts;
 uint8_t rirbsts;
 int i;

 sc = (struct hdac_softc *)context;
 hdac_lock(sc);


 intsts = HDAC_READ_4(&sc->mem, HDAC_INTSTS);
 if ((intsts & HDAC_INTSTS_GIS) == 0) {
  hdac_unlock(sc);
  return;
 }


 if (intsts & HDAC_INTSTS_CIS) {
  rirbsts = HDAC_READ_1(&sc->mem, HDAC_RIRBSTS);

  while (rirbsts & HDAC_RIRBSTS_RINTFL) {
   HDAC_WRITE_1(&sc->mem,
       HDAC_RIRBSTS, HDAC_RIRBSTS_RINTFL);
   hdac_rirb_flush(sc);
   rirbsts = HDAC_READ_1(&sc->mem, HDAC_RIRBSTS);
  }
  if (sc->unsolq_rp != sc->unsolq_wp)
   taskqueue_enqueue(taskqueue_thread, &sc->unsolq_task);
 }

 if (intsts & HDAC_INTSTS_SIS_MASK) {
  for (i = 0; i < sc->num_ss; i++) {
   if ((intsts & (1 << i)) == 0)
    continue;
   HDAC_WRITE_1(&sc->mem, (i << 5) + HDAC_SDSTS,
       HDAC_SDSTS_DESE | HDAC_SDSTS_FIFOE | HDAC_SDSTS_BCIS );
   if ((dev = sc->streams[i].dev) != ((void*)0)) {
    HDAC_STREAM_INTR(dev,
        sc->streams[i].dir, sc->streams[i].stream);
   }
  }
 }

 HDAC_WRITE_4(&sc->mem, HDAC_INTSTS, intsts);
 hdac_unlock(sc);
}
