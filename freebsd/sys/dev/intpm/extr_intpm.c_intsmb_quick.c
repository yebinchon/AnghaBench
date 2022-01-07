
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct intsmb_softc {int io_res; } ;
typedef int device_t ;


 int INTSMB_LOCK (struct intsmb_softc*) ;
 int INTSMB_UNLOCK (struct intsmb_softc*) ;
 int LSB ;
 int PIIX4_SMBHSTADD ;
 int PIIX4_SMBHSTCNT_PROT_QUICK ;
 int SMB_EINVAL ;


 int bus_write_1 (int ,int ,int ) ;
 struct intsmb_softc* device_get_softc (int ) ;
 int intsmb_free (struct intsmb_softc*) ;
 int intsmb_start (struct intsmb_softc*,int ,int ) ;
 int intsmb_stop (struct intsmb_softc*) ;

__attribute__((used)) static int
intsmb_quick(device_t dev, u_char slave, int how)
{
 struct intsmb_softc *sc = device_get_softc(dev);
 int error;
 u_char data;

 data = slave;


 switch(how) {
 case 128:
  data &= ~LSB;
  break;
 case 129:
  data |= LSB;
  break;
 default:
  return (SMB_EINVAL);
 }

 INTSMB_LOCK(sc);
 error = intsmb_free(sc);
 if (error) {
  INTSMB_UNLOCK(sc);
  return (error);
 }
 bus_write_1(sc->io_res, PIIX4_SMBHSTADD, data);
 intsmb_start(sc, PIIX4_SMBHSTCNT_PROT_QUICK, 0);
 error = intsmb_stop(sc);
 INTSMB_UNLOCK(sc);
 return (error);
}
