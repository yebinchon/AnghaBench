
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sc_info {int mpu; int (* mpu_intr ) (int ) ;} ;


 int stub1 (int ) ;

__attribute__((used)) static void
emu_intr2(void *p)
{
 struct sc_info *sc = (struct sc_info *)p;

 if (sc->mpu_intr)
     (sc->mpu_intr)(sc->mpu);
}
