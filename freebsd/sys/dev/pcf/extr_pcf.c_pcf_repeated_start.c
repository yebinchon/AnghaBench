
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_char ;
struct pcf_softc {int dummy; } ;
typedef int device_t ;


 int ACK ;
 struct pcf_softc* DEVTOSOFTC (int ) ;
 int ESO ;
 int IIC_ENOACK ;
 int PCF_LOCK (struct pcf_softc*) ;
 int PCF_UNLOCK (struct pcf_softc*) ;
 int STA ;
 int STO ;
 int device_printf (int ,char*,unsigned int) ;
 scalar_t__ pcf_noack (struct pcf_softc*,int) ;
 int pcf_set_S0 (struct pcf_softc*,scalar_t__) ;
 int pcf_set_S1 (struct pcf_softc*,int) ;
 int pcf_stop_locked (struct pcf_softc*) ;
 int pcf_wait_byte (struct pcf_softc*) ;
 int printf (char*) ;

int
pcf_repeated_start(device_t dev, u_char slave, int timeout)
{
 struct pcf_softc *sc = DEVTOSOFTC(dev);
 int error = 0;

 PCF_LOCK(sc);





 pcf_set_S1(sc, ESO|STA|STO|ACK);



 pcf_set_S0(sc, slave);


 if ((error = pcf_wait_byte(sc)))
  goto error;


 if (pcf_noack(sc, timeout)) {
  error = IIC_ENOACK;



  goto error;
 }

 PCF_UNLOCK(sc);
 return (0);

error:
 pcf_stop_locked(sc);
 PCF_UNLOCK(sc);
 return (error);
}
