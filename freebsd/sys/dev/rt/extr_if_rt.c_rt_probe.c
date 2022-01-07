
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rt_softc {unsigned int rt_chipid; } ;
struct ofw_compat_data {scalar_t__ ocd_data; } ;
typedef int device_t ;
typedef int buf ;


 int BUS_PROBE_GENERIC ;
 int ENXIO ;
 unsigned int RT_CHIPID_MT7620 ;
 unsigned int RT_CHIPID_MT7621 ;
 unsigned int RT_CHIPID_RT3050 ;
 unsigned int RT_CHIPID_RT5350 ;
 struct rt_softc* device_get_softc (int ) ;
 int device_set_desc_copy (int ,char*) ;
 struct ofw_compat_data* ofw_bus_search_compatible (int ,int ) ;
 int rt_compat_data ;
 int snprintf (char*,int,char*,char,int) ;

__attribute__((used)) static int
rt_probe(device_t dev)
{
 struct rt_softc *sc = device_get_softc(dev);
 char buf[80];
 sc->rt_chipid = RT_CHIPID_RT3050;


 snprintf(buf, sizeof(buf), "Ralink %cT%x onChip Ethernet driver",
  sc->rt_chipid >= 0x7600 ? 'M' : 'R', sc->rt_chipid);
 device_set_desc_copy(dev, buf);
 return (BUS_PROBE_GENERIC);
}
