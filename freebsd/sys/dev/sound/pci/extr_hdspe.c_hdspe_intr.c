
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sc_pcminfo {int (* ih ) (struct sc_pcminfo*) ;} ;
struct sc_info {int lock; int dev; } ;
typedef int device_t ;


 int HDSPE_AUDIO_IRQ_PENDING ;
 int HDSPE_INTERRUPT_ACK ;
 int HDSPE_STATUS_REG ;
 int M_TEMP ;
 int device_get_children (int ,int **,int*) ;
 struct sc_pcminfo* device_get_ivars (int ) ;
 int free (int *,int ) ;
 int hdspe_read_1 (struct sc_info*,int ) ;
 int hdspe_write_1 (struct sc_info*,int ,int ) ;
 int snd_mtxlock (int ) ;
 int snd_mtxunlock (int ) ;
 int stub1 (struct sc_pcminfo*) ;

__attribute__((used)) static void
hdspe_intr(void *p)
{
 struct sc_pcminfo *scp;
 struct sc_info *sc;
 device_t *devlist;
 int devcount;
 int status;
 int err;
 int i;

 sc = (struct sc_info *)p;

 snd_mtxlock(sc->lock);

 status = hdspe_read_1(sc, HDSPE_STATUS_REG);
 if (status & HDSPE_AUDIO_IRQ_PENDING) {
  if ((err = device_get_children(sc->dev, &devlist, &devcount)) != 0)
   return;

  for (i = 0; i < devcount; i++) {
   scp = device_get_ivars(devlist[i]);
   if (scp->ih != ((void*)0))
    scp->ih(scp);
  }

  hdspe_write_1(sc, HDSPE_INTERRUPT_ACK, 0);
  free(devlist, M_TEMP);
 }

 snd_mtxunlock(sc->lock);
}
