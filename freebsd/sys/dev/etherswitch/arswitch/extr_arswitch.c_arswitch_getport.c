
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_6__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint32_t ;
struct mii_data {int mii_media; int mii_ifp; } ;
struct ifmediareq {int ifm_current; int ifm_active; int ifm_status; scalar_t__ ifm_mask; scalar_t__ ifm_count; } ;
struct TYPE_8__ {int (* arswitch_port_vlan_get ) (struct arswitch_softc*,TYPE_3__*) ;} ;
struct TYPE_7__ {scalar_t__ es_nports; } ;
struct arswitch_softc {TYPE_2__ hal; TYPE_1__ info; } ;
struct TYPE_9__ {scalar_t__ es_port; int es_nleds; int* es_led; int es_ifr; struct ifmediareq es_ifmr; int es_flags; } ;
typedef TYPE_3__ etherswitch_port_t ;
typedef int device_t ;
struct TYPE_10__ {int shift; int reg; } ;


 int AR8327 ;
 scalar_t__ AR8X16_IS_SWITCH (struct arswitch_softc*,int ) ;
 int ENXIO ;
 int ETHERSWITCH_PORT_CPU ;
 int ETHERSWITCH_PORT_LED_DEFAULT ;
 int ETHERSWITCH_PORT_LED_MAX ;
 int IFM_1000_T ;
 int IFM_ACTIVE ;
 int IFM_AVALID ;
 int IFM_ETHER ;
 int IFM_FDX ;
 int SIOCGIFMEDIA ;
 TYPE_6__** ar8327_led_mapping ;
 scalar_t__ arswitch_is_cpuport (struct arswitch_softc*,scalar_t__) ;
 struct mii_data* arswitch_miiforport (struct arswitch_softc*,scalar_t__) ;
 int arswitch_readreg (int ,int ) ;
 struct arswitch_softc* device_get_softc (int ) ;
 int ifmedia_ioctl (int ,int *,int *,int ) ;
 int* led_pattern_table ;
 int stub1 (struct arswitch_softc*,TYPE_3__*) ;

__attribute__((used)) static int
arswitch_getport(device_t dev, etherswitch_port_t *p)
{
 struct arswitch_softc *sc;
 struct mii_data *mii;
 struct ifmediareq *ifmr;
 int err;

 sc = device_get_softc(dev);

 if (p->es_port < 0 || p->es_port > sc->info.es_nports)
  return (ENXIO);

 err = sc->hal.arswitch_port_vlan_get(sc, p);
 if (err != 0)
  return (err);

 mii = arswitch_miiforport(sc, p->es_port);
 if (arswitch_is_cpuport(sc, p->es_port)) {


  p->es_flags |= ETHERSWITCH_PORT_CPU;
  ifmr = &p->es_ifmr;
  ifmr->ifm_count = 0;
  ifmr->ifm_current = ifmr->ifm_active =
      IFM_ETHER | IFM_1000_T | IFM_FDX;
  ifmr->ifm_mask = 0;
  ifmr->ifm_status = IFM_ACTIVE | IFM_AVALID;
 } else if (mii != ((void*)0)) {
  err = ifmedia_ioctl(mii->mii_ifp, &p->es_ifr,
      &mii->mii_media, SIOCGIFMEDIA);
  if (err)
   return (err);
 } else {
  return (ENXIO);
 }

 if (!arswitch_is_cpuport(sc, p->es_port) &&
     AR8X16_IS_SWITCH(sc, AR8327)) {
  int led;
  p->es_nleds = 3;

  for (led = 0; led < p->es_nleds; led++)
  {
   int style;
   uint32_t val;


   val = arswitch_readreg(dev,
       ar8327_led_mapping[p->es_port-1][led].reg);
   val = (val>>ar8327_led_mapping[p->es_port-1][led].shift)&0x03;

   for (style = 0; style < ETHERSWITCH_PORT_LED_MAX; style++)
   {
    if (led_pattern_table[style] == val) break;
   }


   if (style == ETHERSWITCH_PORT_LED_MAX)
    style = ETHERSWITCH_PORT_LED_DEFAULT;

   p->es_led[led] = style;
  }
 } else
 {
  p->es_nleds = 0;
 }

 return (0);
}
