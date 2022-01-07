
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sc_info {int lock; int * mpu; int * mpu_intr; } ;
struct mpu401 {int dummy; } ;


 int snd_mtxlock (int ) ;
 int snd_mtxunlock (int ) ;

__attribute__((used)) static int
cmi_muninit(struct mpu401 *arg, void *cookie)
{
 struct sc_info *sc = cookie;

 snd_mtxlock(sc->lock);
 sc->mpu_intr = ((void*)0);
 sc->mpu = ((void*)0);
 snd_mtxunlock(sc->lock);

 return 0;
}
