
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcf_softc {int dummy; } ;
typedef int device_t ;


 struct pcf_softc* DEVTOSOFTC (int ) ;
 int IIC_ENOACK ;
 int PCF_LOCK (struct pcf_softc*) ;
 int PCF_UNLOCK (struct pcf_softc*) ;
 int device_printf (int ,char*,int,int,...) ;
 scalar_t__ pcf_noack (struct pcf_softc*,int) ;
 int pcf_set_S0 (struct pcf_softc*,int ) ;
 int pcf_wait_byte (struct pcf_softc*) ;

int
pcf_write(device_t dev, const char *buf, int len, int *sent, int timeout )
{
 struct pcf_softc *sc = DEVTOSOFTC(dev);
 int bytes, error = 0;






 bytes = 0;
 PCF_LOCK(sc);
 while (len) {

  pcf_set_S0(sc, *buf++);


  if ((error = pcf_wait_byte(sc)))
   goto error;


  if (pcf_noack(sc, timeout)) {
   error = IIC_ENOACK;
   goto error;
  }

  len --;
  bytes ++;
 }

error:
 *sent = bytes;
 PCF_UNLOCK(sc);





 return (error);
}
