
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct ifmedia {int ifm_media; } ;
struct TYPE_5__ {int forced_speed_duplex; void* autoneg; } ;
struct TYPE_4__ {int autoneg_advertised; } ;
struct TYPE_6__ {TYPE_2__ mac; TYPE_1__ phy; } ;
struct adapter {int dev; TYPE_3__ hw; } ;
typedef int if_ctx_t ;


 int ADVERTISE_1000_FULL ;
 int ADVERTISE_100_FULL ;
 int ADVERTISE_100_HALF ;
 int ADVERTISE_10_FULL ;
 int ADVERTISE_10_HALF ;
 int AUTONEG_ADV_DEFAULT ;
 void* DO_AUTO_NEG ;
 int EINVAL ;
 void* FALSE ;






 scalar_t__ IFM_ETHER ;
 int IFM_FDX ;
 int IFM_GMASK ;
 int IFM_SUBTYPE (int) ;
 scalar_t__ IFM_TYPE (int) ;
 int INIT_DEBUGOUT (char*) ;
 int device_printf (int ,char*) ;
 int em_if_init (int ) ;
 struct ifmedia* iflib_get_media (int ) ;
 struct adapter* iflib_get_softc (int ) ;

__attribute__((used)) static int
em_if_media_change(if_ctx_t ctx)
{
 struct adapter *adapter = iflib_get_softc(ctx);
 struct ifmedia *ifm = iflib_get_media(ctx);

 INIT_DEBUGOUT("em_if_media_change: begin");

 if (IFM_TYPE(ifm->ifm_media) != IFM_ETHER)
  return (EINVAL);

 switch (IFM_SUBTYPE(ifm->ifm_media)) {
 case 128:
  adapter->hw.mac.autoneg = DO_AUTO_NEG;
  adapter->hw.phy.autoneg_advertised = AUTONEG_ADV_DEFAULT;
  break;
 case 133:
 case 132:
 case 131:
  adapter->hw.mac.autoneg = DO_AUTO_NEG;
  adapter->hw.phy.autoneg_advertised = ADVERTISE_1000_FULL;
  break;
 case 130:
  adapter->hw.mac.autoneg = FALSE;
  adapter->hw.phy.autoneg_advertised = 0;
  if ((ifm->ifm_media & IFM_GMASK) == IFM_FDX)
   adapter->hw.mac.forced_speed_duplex = ADVERTISE_100_FULL;
  else
   adapter->hw.mac.forced_speed_duplex = ADVERTISE_100_HALF;
  break;
 case 129:
  adapter->hw.mac.autoneg = FALSE;
  adapter->hw.phy.autoneg_advertised = 0;
  if ((ifm->ifm_media & IFM_GMASK) == IFM_FDX)
   adapter->hw.mac.forced_speed_duplex = ADVERTISE_10_FULL;
  else
   adapter->hw.mac.forced_speed_duplex = ADVERTISE_10_HALF;
  break;
 default:
  device_printf(adapter->dev, "Unsupported media type\n");
 }

 em_if_init(ctx);

 return (0);
}
