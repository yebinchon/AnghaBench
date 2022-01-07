
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct alpm_softc {int dummy; } ;


 int ALPM_DEBUG (int ) ;
 int ALPM_SMBINB (struct alpm_softc*,int ) ;
 int BUS_COLLI ;
 int DELAY (int) ;
 int DEVICE_ERR ;
 int SMBSTS ;
 int SMB_EABORT ;
 int SMB_EBUSERR ;
 int SMB_ENOACK ;
 int SMB_ENOERR ;
 int SMB_ETIMEOUT ;
 int SMI_I_STS ;
 int TERMINATE ;
 int alpm_clear (struct alpm_softc*) ;
 int printf (char*,int) ;

__attribute__((used)) static int
alpm_wait(struct alpm_softc *sc)
{
 int count = 10000;
 u_char sts = 0;
 int error;


 while (count--) {
  DELAY(10);
  sts = ALPM_SMBINB(sc, SMBSTS);
  if (sts & SMI_I_STS)
   break;
 }

 ALPM_DEBUG(printf("alpm: STS=0x%x\n", sts));

 error = SMB_ENOERR;

 if (!count)
  error |= SMB_ETIMEOUT;

 if (sts & TERMINATE)
  error |= SMB_EABORT;

 if (sts & BUS_COLLI)
  error |= SMB_ENOACK;

 if (sts & DEVICE_ERR)
  error |= SMB_EBUSERR;

 if (error != SMB_ENOERR)
  alpm_clear(sc);

 return (error);
}
