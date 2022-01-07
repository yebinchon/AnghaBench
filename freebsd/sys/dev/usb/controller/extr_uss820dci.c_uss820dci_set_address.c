
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct uss820dci_softc {int dummy; } ;


 int DPRINTFN (int,char*,int ) ;
 int USS820_FADDR ;
 int USS820_WRITE_1 (struct uss820dci_softc*,int ,int ) ;

__attribute__((used)) static void
uss820dci_set_address(struct uss820dci_softc *sc, uint8_t addr)
{
 DPRINTFN(5, "addr=%d\n", addr);

 USS820_WRITE_1(sc, USS820_FADDR, addr);
}
