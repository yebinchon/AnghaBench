
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwn_softc {int txchainmask; } ;


 int IWN_LSB (int ) ;

__attribute__((used)) static int
iwn_get_1stream_tx_antmask(struct iwn_softc *sc)
{

 return IWN_LSB(sc->txchainmask);
}
