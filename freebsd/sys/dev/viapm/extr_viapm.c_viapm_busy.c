
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct viapm_softc {int dummy; } ;


 int SMBHST ;
 int SMBHST_BUSY ;
 int VIAPM_DEBUG (int ) ;
 int VIAPM_INB (int ) ;
 int printf (char*,int) ;

__attribute__((used)) static int
viapm_busy(struct viapm_softc *viapm)
{
 u_char sts;

 sts = VIAPM_INB(SMBHST);

 VIAPM_DEBUG(printf("viapm: idle? STS=0x%x\n", sts));

 return (sts & SMBHST_BUSY);
}
