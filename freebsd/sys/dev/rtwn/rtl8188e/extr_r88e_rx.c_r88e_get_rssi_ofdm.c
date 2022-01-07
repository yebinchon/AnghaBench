
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtwn_softc {int dummy; } ;
struct r88e_rx_phystat {int sig_qual; } ;
typedef int int8_t ;



int8_t
r88e_get_rssi_ofdm(struct rtwn_softc *sc, void *physt)
{
 struct r88e_rx_phystat *phy = (struct r88e_rx_phystat *)physt;
 int rssi;


 rssi = ((phy->sig_qual >> 1) & 0x7f) - 110;

 return (rssi);
}
