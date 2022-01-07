
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sc_info {int flags; int dev; int bufsz; int irq; int nabmbar; int nambar; } ;


 int ICH_DMA_NOCACHE ;
 int PCM_KLDSTRING (int ) ;
 int SND_STATUSLEN ;
 scalar_t__ bootverbose ;
 int device_printf (int ,char*) ;
 int pcm_setstatus (int ,char*) ;
 int rman_get_start (int ) ;
 int snd_ich ;
 int snprintf (char*,int,char*,int ,int ,int ,int ,int ) ;

__attribute__((used)) static void
ich_setstatus(struct sc_info *sc)
{
 char status[SND_STATUSLEN];

 snprintf(status, SND_STATUSLEN,
     "at io 0x%jx, 0x%jx irq %jd bufsz %u %s",
     rman_get_start(sc->nambar), rman_get_start(sc->nabmbar),
     rman_get_start(sc->irq), sc->bufsz,PCM_KLDSTRING(snd_ich));

 if (bootverbose && (sc->flags & ICH_DMA_NOCACHE))
  device_printf(sc->dev,
      "PCI Master abort workaround enabled\n");

 pcm_setstatus(sc->dev, status);
}
