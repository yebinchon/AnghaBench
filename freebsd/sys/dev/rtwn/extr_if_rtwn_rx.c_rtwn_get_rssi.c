
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtwn_softc {int dummy; } ;
typedef int int8_t ;


 int rtwn_get_rssi_cck (struct rtwn_softc*,void*) ;
 int rtwn_get_rssi_ofdm (struct rtwn_softc*,void*) ;

__attribute__((used)) static int8_t
rtwn_get_rssi(struct rtwn_softc *sc, void *physt, int is_cck)
{
 int8_t rssi;

 if (is_cck)
  rssi = rtwn_get_rssi_cck(sc, physt);
 else
  rssi = rtwn_get_rssi_ofdm(sc, physt);

 return (rssi);
}
