
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct rt_softc {int intr_disable_mask; int intr_enable_mask; int fe_int_enable; } ;


 int RT_WRITE (struct rt_softc*,int ,int) ;

__attribute__((used)) static void
rt_intr_disable(struct rt_softc *sc, uint32_t intr_mask)
{
 uint32_t tmp;

 sc->intr_disable_mask |= intr_mask;
 tmp = sc->intr_enable_mask & ~sc->intr_disable_mask;
 RT_WRITE(sc, sc->fe_int_enable, tmp);
}
