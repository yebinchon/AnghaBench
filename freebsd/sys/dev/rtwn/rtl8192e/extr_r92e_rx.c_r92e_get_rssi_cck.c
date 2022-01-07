
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtwn_softc {int dummy; } ;
typedef scalar_t__ int8_t ;


 scalar_t__ r88e_get_rssi_cck (struct rtwn_softc*,void*) ;

int8_t
r92e_get_rssi_cck(struct rtwn_softc *sc, void *physt)
{

 return (10 + r88e_get_rssi_cck(sc, physt));
}
