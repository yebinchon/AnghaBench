
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcfclock_data {int dev; } ;
struct cdev {struct pcfclock_data* si_drv1; } ;
typedef int device_t ;


 int EIO ;
 int PCFCLOCK_CMD_TIME ;
 int PCFCLOCK_CORRECT_FORMAT (char*) ;
 int PCFCLOCK_CORRECT_SYNC (char*) ;
 int PPB_COMPATIBLE ;
 int device_get_parent (int ) ;
 scalar_t__ pcfclock_read_data (struct cdev*,char*,int) ;
 int pcfclock_write_cmd (struct cdev*,int ) ;
 int ppb_set_mode (int ,int ) ;

__attribute__((used)) static int
pcfclock_read_dev(struct cdev *dev, char *buf, int maxretries)
{
 struct pcfclock_data *sc = dev->si_drv1;
 device_t pcfclockdev = sc->dev;
 device_t ppbus = device_get_parent(pcfclockdev);
 int error = 0;

 ppb_set_mode(ppbus, PPB_COMPATIBLE);

 while (--maxretries > 0) {
  pcfclock_write_cmd(dev, PCFCLOCK_CMD_TIME);
  if (pcfclock_read_data(dev, buf, 68))
   continue;

  if (!PCFCLOCK_CORRECT_SYNC(buf))
   continue;

  if (!PCFCLOCK_CORRECT_FORMAT(buf))
   continue;

  break;
 }

 if (!maxretries)
  error = EIO;

 return (error);
}
