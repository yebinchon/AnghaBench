
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct alpm_softc {int dummy; } ;


 int ALPM_DEBUG (int ) ;
 int ALPM_SMBINB (struct alpm_softc*,int ) ;
 int IDL_STS ;
 int SMBSTS ;
 int printf (char*,int) ;

__attribute__((used)) static int
alpm_idle(struct alpm_softc *sc)
{
 u_char sts;

 sts = ALPM_SMBINB(sc, SMBSTS);

 ALPM_DEBUG(printf("alpm: idle? STS=0x%x\n", sts));

 return (sts & IDL_STS);
}
