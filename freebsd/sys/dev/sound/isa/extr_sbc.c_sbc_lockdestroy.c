
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sbc_softc {int lock; } ;


 int snd_mtxfree (int ) ;

__attribute__((used)) static void
sbc_lockdestroy(struct sbc_softc *scp)
{
 snd_mtxfree(scp->lock);
}
