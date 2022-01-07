
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sbc_softc {int lock; } ;


 int snd_mtxlock (int ) ;

void
sbc_lock(struct sbc_softc *scp)
{
 snd_mtxlock(scp->lock);
}
