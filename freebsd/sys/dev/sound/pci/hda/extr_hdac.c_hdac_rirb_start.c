
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct hdac_softc {int mem; } ;


 int HDAC_READ_1 (int *,int ) ;
 int HDAC_RIRBCTL ;
 int HDAC_RIRBCTL_RIRBDMAEN ;
 int HDAC_WRITE_1 (int *,int ,int ) ;

__attribute__((used)) static void
hdac_rirb_start(struct hdac_softc *sc)
{
 uint32_t rirbctl;

 rirbctl = HDAC_READ_1(&sc->mem, HDAC_RIRBCTL);
 rirbctl |= HDAC_RIRBCTL_RIRBDMAEN;
 HDAC_WRITE_1(&sc->mem, HDAC_RIRBCTL, rirbctl);
}
