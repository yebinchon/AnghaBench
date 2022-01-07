
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct viapm_softc {int dummy; } ;


 int DELAY (int) ;
 int SMBHST ;
 int SMBHST_COLLID ;
 int SMBHST_ERROR ;
 int SMBHST_FAILED ;
 int SMBHST_INTR ;
 int VIAPM_OUTB (int ,int) ;

__attribute__((used)) static int
viapm_clear(struct viapm_softc *viapm)
{
 VIAPM_OUTB(SMBHST, SMBHST_FAILED | SMBHST_COLLID |
  SMBHST_ERROR | SMBHST_INTR);
 DELAY(10);

 return (0);
}
