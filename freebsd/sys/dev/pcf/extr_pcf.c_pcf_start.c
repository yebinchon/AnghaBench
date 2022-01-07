
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_char ;
struct pcf_softc {int pcf_started; } ;
typedef int device_t ;


 int ACK ;
 struct pcf_softc* DEVTOSOFTC (int ) ;
 int ESO ;
 int IIC_EBUSERR ;
 int IIC_ENOACK ;
 int PCF_LOCK (struct pcf_softc*) ;
 int PCF_UNLOCK (struct pcf_softc*) ;
 int PIN ;
 int STA ;
 int device_printf (int ,char*,unsigned int) ;
 int nBB ;
 int pcf_get_S1 (struct pcf_softc*) ;
 scalar_t__ pcf_noack (struct pcf_softc*,int) ;
 int pcf_set_S0 (struct pcf_softc*,scalar_t__) ;
 int pcf_set_S1 (struct pcf_softc*,int) ;
 int pcf_stop_locked (struct pcf_softc*) ;
 int pcf_wait_byte (struct pcf_softc*) ;
 int printf (char*) ;

int
pcf_start(device_t dev, u_char slave, int timeout)
{
 struct pcf_softc *sc = DEVTOSOFTC(dev);
 int error = 0;

 PCF_LOCK(sc);



 if ((pcf_get_S1(sc) & nBB) == 0) {



  PCF_UNLOCK(sc);
  return (IIC_EBUSERR);
 }



 pcf_set_S0(sc, slave);


 pcf_set_S1(sc, PIN|ESO|STA|ACK);

 sc->pcf_started = 1;


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
