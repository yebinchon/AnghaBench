
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
typedef scalar_t__ u_int32_t ;
typedef int u_int ;
struct unin_chip_softc {scalar_t__ sc_addr; } ;
typedef int device_t ;


 struct unin_chip_softc* device_get_softc (int ) ;
 scalar_t__ inl (int volatile*) ;
 int outl (int volatile*,scalar_t__) ;

__attribute__((used)) static void
unin_update_reg(device_t dev, uint32_t regoff, uint32_t set, uint32_t clr)
{
 volatile u_int *reg;
 struct unin_chip_softc *sc;
 u_int32_t tmpl;

 sc = device_get_softc(dev);
 reg = (void *)(sc->sc_addr + regoff);
 tmpl = inl(reg);
 tmpl &= ~clr;
 tmpl |= set;
 outl(reg, tmpl);
}
