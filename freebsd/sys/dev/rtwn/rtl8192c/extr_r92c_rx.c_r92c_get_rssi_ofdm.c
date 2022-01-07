
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtwn_softc {int dummy; } ;
struct r92c_rx_phystat {int pwdb_all; } ;
typedef int int8_t ;



int8_t
r92c_get_rssi_ofdm(struct rtwn_softc *sc, void *physt)
{
 struct r92c_rx_phystat *phy = (struct r92c_rx_phystat *)physt;
 int rssi;


 rssi = ((phy->pwdb_all >> 1) & 0x7f) - 110;

 return (rssi);
}
