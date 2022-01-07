
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct csa_midi_softc {int mpu; int (* mpu_intr ) (int ) ;} ;


 int stub1 (int ) ;

__attribute__((used)) static void
csamidi_midi_intr(void *arg)
{
 struct csa_midi_softc *scp = (struct csa_midi_softc *)arg;

 if (scp->mpu_intr)
  (scp->mpu_intr)(scp->mpu);
}
