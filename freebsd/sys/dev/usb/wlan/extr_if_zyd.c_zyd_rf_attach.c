
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct zyd_rf {int update_pwr; int width; int set_channel; int switch_radio; int init; int bandedge6; struct zyd_softc* rf_sc; } ;
struct zyd_softc {int sc_dev; int sc_macrev; struct zyd_rf sc_rf; } ;


 int EINVAL ;
 int ZYD_ZD1211B ;
 int device_printf (int ,char*,int ) ;
 int zyd_al2210_init ;
 int zyd_al2210_set_channel ;
 int zyd_al2210_switch_radio ;
 int zyd_al2230_bandedge6 ;
 int zyd_al2230_init ;
 int zyd_al2230_init_b ;
 int zyd_al2230_set_channel ;
 int zyd_al2230_set_channel_b ;
 int zyd_al2230_switch_radio ;
 int zyd_al7230B_init ;
 int zyd_al7230B_set_channel ;
 int zyd_al7230B_switch_radio ;
 int zyd_gct_init ;
 int zyd_gct_set_channel ;
 int zyd_gct_switch_radio ;
 int zyd_maxim2_init ;
 int zyd_maxim2_set_channel ;
 int zyd_maxim2_switch_radio ;
 int zyd_rf_name (int) ;
 int zyd_rfmd_init ;
 int zyd_rfmd_set_channel ;
 int zyd_rfmd_switch_radio ;

__attribute__((used)) static int
zyd_rf_attach(struct zyd_softc *sc, uint8_t type)
{
 struct zyd_rf *rf = &sc->sc_rf;

 rf->rf_sc = sc;
 rf->update_pwr = 1;

 switch (type) {
 case 128:
  rf->init = zyd_rfmd_init;
  rf->switch_radio = zyd_rfmd_switch_radio;
  rf->set_channel = zyd_rfmd_set_channel;
  rf->width = 24;
  break;
 case 134:
 case 133:
  if (sc->sc_macrev == ZYD_ZD1211B) {
   rf->init = zyd_al2230_init_b;
   rf->set_channel = zyd_al2230_set_channel_b;
  } else {
   rf->init = zyd_al2230_init;
   rf->set_channel = zyd_al2230_set_channel;
  }
  rf->switch_radio = zyd_al2230_switch_radio;
  rf->bandedge6 = zyd_al2230_bandedge6;
  rf->width = 24;
  break;
 case 132:
  rf->init = zyd_al7230B_init;
  rf->switch_radio = zyd_al7230B_switch_radio;
  rf->set_channel = zyd_al7230B_set_channel;
  rf->width = 24;
  break;
 case 135:
  rf->init = zyd_al2210_init;
  rf->switch_radio = zyd_al2210_switch_radio;
  rf->set_channel = zyd_al2210_set_channel;
  rf->width = 24;
  break;
 case 130:
 case 131:
  rf->init = zyd_gct_init;
  rf->switch_radio = zyd_gct_switch_radio;
  rf->set_channel = zyd_gct_set_channel;
  rf->width = 24;
  rf->update_pwr = 0;
  break;
 case 129:
  rf->init = zyd_maxim2_init;
  rf->switch_radio = zyd_maxim2_switch_radio;
  rf->set_channel = zyd_maxim2_set_channel;
  rf->width = 18;
  break;
 default:
  device_printf(sc->sc_dev,
      "sorry, radio \"%s\" is not supported yet\n",
      zyd_rf_name(type));
  return (EINVAL);
 }
 return (0);
}
