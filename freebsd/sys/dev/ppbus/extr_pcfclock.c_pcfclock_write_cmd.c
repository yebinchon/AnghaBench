
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcfclock_data {int dev; } ;
struct cdev {struct pcfclock_data* si_drv1; } ;
typedef int device_t ;


 int AFC_HI ;
 int AFC_LO ;
 int AUTOFEED_CLOCK (int ) ;
 int DELAY (int) ;
 int device_get_parent (int ) ;
 int ppb_wdtr (int ,unsigned char) ;

__attribute__((used)) static void
pcfclock_write_cmd(struct cdev *dev, unsigned char command)
{
 struct pcfclock_data *sc = dev->si_drv1;
 device_t pcfclockdev = sc->dev;
 device_t ppbus = device_get_parent(pcfclockdev);
 unsigned char ctr = 14;
 char i;

 for (i = 0; i <= 7; i++) {
  ppb_wdtr(ppbus, i);
  AUTOFEED_CLOCK(i & 1 ? AFC_HI : AFC_LO);
  DELAY(3000);
 }
 ppb_wdtr(ppbus, command);
 AUTOFEED_CLOCK(AFC_LO);
 DELAY(3000);
 AUTOFEED_CLOCK(AFC_HI);
}
