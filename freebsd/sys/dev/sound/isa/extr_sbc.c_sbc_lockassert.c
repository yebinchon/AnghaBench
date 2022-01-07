
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sbc_softc {int lock; } ;


 int snd_mtxassert (int ) ;

void
sbc_lockassert(struct sbc_softc *scp)
{
 snd_mtxassert(scp->lock);
}
