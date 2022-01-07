
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct hdac_softc {int mem; } ;


 int HDAC_CORBCTL ;
 int HDAC_CORBCTL_CORBRUN ;
 int HDAC_READ_1 (int *,int ) ;
 int HDAC_WRITE_1 (int *,int ,int ) ;

__attribute__((used)) static void
hdac_corb_start(struct hdac_softc *sc)
{
 uint32_t corbctl;

 corbctl = HDAC_READ_1(&sc->mem, HDAC_CORBCTL);
 corbctl |= HDAC_CORBCTL_CORBRUN;
 HDAC_WRITE_1(&sc->mem, HDAC_CORBCTL, corbctl);
}
