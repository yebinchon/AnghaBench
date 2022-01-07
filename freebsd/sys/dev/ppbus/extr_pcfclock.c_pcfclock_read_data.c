
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcfclock_data {int dev; } ;
struct cdev {struct pcfclock_data* si_drv1; } ;
typedef int ssize_t ;
typedef int device_t ;


 scalar_t__ BIT_SET ;
 int CLOCK_OK ;
 int DELAY (int) ;
 int EIO ;
 int bzero (char*,int) ;
 int device_get_parent (int ) ;

__attribute__((used)) static int
pcfclock_read_data(struct cdev *dev, char *buf, ssize_t bits)
{
 struct pcfclock_data *sc = dev->si_drv1;
 device_t pcfclockdev = sc->dev;
 device_t ppbus = device_get_parent(pcfclockdev);
 int i;
 char waitfor;
 int offset;


 bzero(buf, ((bits + 3) >> 2) + 1);

 waitfor = 100;
 for (i = 0; i <= bits; i++) {

  while (!CLOCK_OK && --waitfor > 0)
   DELAY(100);


  if (!waitfor)
   return (EIO);

  waitfor = 100;


  DELAY(500);


  offset = i >> 2;
  buf[offset] <<= 1;

  if (BIT_SET)
   buf[offset] |= 1;
 }

 return (0);
}
