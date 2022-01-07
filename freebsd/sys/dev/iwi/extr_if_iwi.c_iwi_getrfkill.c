
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwi_softc {int dummy; } ;


 int CSR_READ_4 (struct iwi_softc*,int ) ;
 int IWI_CSR_IO ;
 int IWI_IO_RADIO_ENABLED ;

__attribute__((used)) static int
iwi_getrfkill(struct iwi_softc *sc)
{
 return (CSR_READ_4(sc, IWI_CSR_IO) & IWI_IO_RADIO_ENABLED) == 0;
}
