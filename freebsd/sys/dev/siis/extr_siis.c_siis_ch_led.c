
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct siis_channel {int r_mem; } ;
typedef scalar_t__ device_t ;


 int ATA_OUTL (int ,int ,int ) ;
 int SIIS_P_CTLCLR ;
 int SIIS_P_CTLSET ;
 int SIIS_P_CTL_LED_ON ;
 struct siis_channel* device_get_softc (scalar_t__) ;

__attribute__((used)) static void
siis_ch_led(void *priv, int onoff)
{
 device_t dev;
 struct siis_channel *ch;

 dev = (device_t)priv;
 ch = device_get_softc(dev);

 if (onoff == 0)
  ATA_OUTL(ch->r_mem, SIIS_P_CTLCLR, SIIS_P_CTL_LED_ON);
 else
  ATA_OUTL(ch->r_mem, SIIS_P_CTLSET, SIIS_P_CTL_LED_ON);
}
