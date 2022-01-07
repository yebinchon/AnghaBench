
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct viapm_softc {int dummy; } ;


 int DELAY (int) ;
 int SMBHST ;
 int SMBHST_BUSY ;
 int SMBHST_COLLID ;
 int SMBHST_ERROR ;
 int SMBHST_FAILED ;
 int SMBHST_INTR ;
 int SMB_EABORT ;
 int SMB_EBUSERR ;
 int SMB_ENOACK ;
 int SMB_ENOERR ;
 int SMB_ETIMEOUT ;
 int VIAPM_DEBUG (int ) ;
 int VIAPM_INB (int ) ;
 int VIAPM_LOCK_ASSERT (struct viapm_softc*) ;
 int printf (char*,int) ;
 int viapm_abort (struct viapm_softc*) ;
 int viapm_clear (struct viapm_softc*) ;

__attribute__((used)) static int
viapm_wait(struct viapm_softc *viapm)
{
 int count = 10000;
 u_char sts = 0;
 int error;

 VIAPM_LOCK_ASSERT(viapm);


 while(count--) {
  DELAY(10);
  sts = VIAPM_INB(SMBHST);


  if (!(sts & SMBHST_BUSY) && (sts & SMBHST_INTR))
   break;
 }

 VIAPM_DEBUG(printf("viapm: SMBHST=0x%x\n", sts));

 error = SMB_ENOERR;

 if (!count)
  error |= SMB_ETIMEOUT;

 if (sts & SMBHST_FAILED)
  error |= SMB_EABORT;

 if (sts & SMBHST_COLLID)
  error |= SMB_ENOACK;

 if (sts & SMBHST_ERROR)
  error |= SMB_EBUSERR;

 if (error != SMB_ENOERR)
  viapm_abort(viapm);

 viapm_clear(viapm);

 return (error);
}
