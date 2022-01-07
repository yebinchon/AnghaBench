
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ahci_led {int num; int dev; } ;
struct ahci_enclosure {int** status; } ;


 int AHCI_NUM_LEDS ;
 int SESCTL_RQSFLT ;
 int SESCTL_RQSID ;
 int ahci_em_setleds (int ,int) ;
 struct ahci_enclosure* device_get_softc (int ) ;

__attribute__((used)) static void
ahci_em_led(void *priv, int onoff)
{
 struct ahci_led *led;
 struct ahci_enclosure *enc;
 int c, l;

 led = (struct ahci_led *)priv;
 enc = device_get_softc(led->dev);
 c = led->num / AHCI_NUM_LEDS;
 l = led->num % AHCI_NUM_LEDS;

 if (l == 0) {
  if (onoff)
   enc->status[c][2] |= 0x80;
  else
   enc->status[c][2] &= ~0x80;
 } else if (l == 1) {
  if (onoff)
   enc->status[c][2] |= SESCTL_RQSID;
  else
   enc->status[c][2] &= ~SESCTL_RQSID;
 } else if (l == 2) {
  if (onoff)
   enc->status[c][3] |= SESCTL_RQSFLT;
  else
   enc->status[c][3] &= SESCTL_RQSFLT;
 }
 ahci_em_setleds(led->dev, c);
}
