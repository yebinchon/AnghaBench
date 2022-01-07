
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct saf1761_otg_softc {int dummy; } ;


 int DPRINTFN (int,char*,int) ;
 int SAF1761_WRITE_LE_4 (struct saf1761_otg_softc*,int ,int) ;
 int SOTG_ADDRESS ;
 int SOTG_ADDRESS_ENABLE ;

__attribute__((used)) static void
saf1761_otg_set_address(struct saf1761_otg_softc *sc, uint8_t addr)
{
 DPRINTFN(5, "addr=%d\n", addr);

 SAF1761_WRITE_LE_4(sc, SOTG_ADDRESS, addr | SOTG_ADDRESS_ENABLE);
}
