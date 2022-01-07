
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcf_softc {int dummy; } ;
typedef int device_t ;


 struct pcf_softc* DEVTOSOFTC (int ) ;
 int ESO ;
 int PCF_LOCK (struct pcf_softc*) ;
 int PCF_UNLOCK (struct pcf_softc*) ;
 int device_printf (int ,char*,int,...) ;
 int dummy_read (struct pcf_softc*) ;
 int pcf_get_S0 (struct pcf_softc*) ;
 int pcf_set_S1 (struct pcf_softc*,int ) ;
 int pcf_stop_locked (struct pcf_softc*) ;
 int pcf_wait_byte (struct pcf_softc*) ;

int
pcf_read(device_t dev, char *buf, int len, int *read, int last,
  int delay )
{
 struct pcf_softc *sc = DEVTOSOFTC(dev);
 int bytes, error = 0;






 PCF_LOCK(sc);

 if (len) {
  if (len == 1 && last)

   pcf_set_S1(sc, ESO);

  dummy_read(sc);
 }

 bytes = 0;
 while (len) {




  if ((error = pcf_wait_byte(sc))) {
   pcf_stop_locked(sc);
   goto error;
  }

  if (len == 1 && last)


   pcf_stop_locked(sc);

  else if (len == 2 && last)

   pcf_set_S1(sc, ESO);


  *buf++ = pcf_get_S0(sc);

  len --;
  bytes ++;
 }

error:
 *read = bytes;
 PCF_UNLOCK(sc);






 return (error);
}
