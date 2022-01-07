
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct musbotg_softc {int dummy; } ;


 int DPRINTFN (int,char*,int) ;
 int MUSB2_REG_FADDR ;
 int MUSB2_WRITE_1 (struct musbotg_softc*,int ,int) ;

__attribute__((used)) static void
musbotg_set_address(struct musbotg_softc *sc, uint8_t addr)
{
 DPRINTFN(4, "addr=%d\n", addr);
 addr &= 0x7F;
 MUSB2_WRITE_1(sc, MUSB2_REG_FADDR, addr);
}
