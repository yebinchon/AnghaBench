
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bwn_softc {int sc_dev; } ;
struct TYPE_2__ {int (* init ) (struct bwn_mac*) ;int (* rf_onoff ) (struct bwn_mac*,int) ;int (* exit ) (struct bwn_mac*) ;int (* get_default_chan ) (struct bwn_mac*) ;int chan; } ;
struct bwn_mac {TYPE_1__ mac_phy; struct bwn_softc* mac_sc; } ;


 int bwn_switch_channel (struct bwn_mac*,int ) ;
 int device_printf (int ,char*) ;
 int stub1 (struct bwn_mac*) ;
 int stub2 (struct bwn_mac*,int) ;
 int stub3 (struct bwn_mac*) ;
 int stub4 (struct bwn_mac*) ;
 int stub5 (struct bwn_mac*) ;
 int stub6 (struct bwn_mac*,int) ;

__attribute__((used)) static int
bwn_phy_init(struct bwn_mac *mac)
{
 struct bwn_softc *sc = mac->mac_sc;
 int error;

 mac->mac_phy.chan = mac->mac_phy.get_default_chan(mac);
 mac->mac_phy.rf_onoff(mac, 1);
 error = mac->mac_phy.init(mac);
 if (error) {
  device_printf(sc->sc_dev, "PHY init failed\n");
  goto fail0;
 }
 error = bwn_switch_channel(mac,
     mac->mac_phy.get_default_chan(mac));
 if (error) {
  device_printf(sc->sc_dev,
      "failed to switch default channel\n");
  goto fail1;
 }
 return (0);
fail1:
 if (mac->mac_phy.exit)
  mac->mac_phy.exit(mac);
fail0:
 mac->mac_phy.rf_onoff(mac, 0);

 return (error);
}
