
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rsu_softc {int dummy; } ;



__attribute__((used)) static int
rsu_hwrssi_to_rssi(struct rsu_softc *sc, int hw_rssi)
{
 int v;

 if (hw_rssi == 0)
  return (0);
 v = hw_rssi >> 4;
 if (v > 80)
  v = 80;
 return (v);
}
