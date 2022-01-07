
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sbc_softc {int dev; int lock; } ;


 int device_get_nameunit (int ) ;
 int snd_mtxcreate (int ,char*) ;

__attribute__((used)) static void
sbc_lockinit(struct sbc_softc *scp)
{
 scp->lock = snd_mtxcreate(device_get_nameunit(scp->dev),
     "snd_sbc softc");
}
