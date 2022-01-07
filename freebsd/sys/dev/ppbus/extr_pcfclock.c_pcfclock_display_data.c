
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcfclock_data {int dev; } ;
struct cdev {struct pcfclock_data* si_drv1; } ;


 int NR (char*,int) ;
 scalar_t__ PCFCLOCK_BATTERY_STATUS_LOW (char*) ;
 int device_printf (int ,char*,...) ;

__attribute__((used)) static void
pcfclock_display_data(struct cdev *dev, char buf[18])
{
 struct pcfclock_data *sc = dev->si_drv1;
 if (PCFCLOCK_BATTERY_STATUS_LOW(buf))
  device_printf(sc->dev, "BATTERY STATUS LOW ON\n");

}
