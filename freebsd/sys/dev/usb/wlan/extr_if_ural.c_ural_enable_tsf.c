
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ural_softc {int dummy; } ;


 int RAL_ENABLE_TSF ;
 int RAL_ENABLE_TSF_SYNC (int) ;
 int RAL_TXRX_CSR19 ;
 int ural_write (struct ural_softc*,int ,int) ;

__attribute__((used)) static void
ural_enable_tsf(struct ural_softc *sc)
{

 ural_write(sc, RAL_TXRX_CSR19, 0);
 ural_write(sc, RAL_TXRX_CSR19, RAL_ENABLE_TSF | RAL_ENABLE_TSF_SYNC(2));
}
