
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_softc {int dummy; } ;


 int ath_rx_proc (struct ath_softc*,int ) ;

__attribute__((used)) static void
ath_legacy_flushrecv(struct ath_softc *sc)
{

 ath_rx_proc(sc, 0);
}
