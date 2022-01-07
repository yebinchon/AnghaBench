
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_short ;
struct amdpm_softc {int dummy; } ;


 int AMDPM_DEBUG (int ) ;
 int AMDPM_LOCK_ASSERT (struct amdpm_softc*) ;
 int AMDPM_SMBINW (struct amdpm_softc*,int ) ;
 int AMDSMB_GLOBAL_STATUS ;
 int AMDSMB_GS_HST_STS ;
 int printf (char*,int) ;

__attribute__((used)) static int
amdpm_idle(struct amdpm_softc *sc)
{
 u_short sts;

 AMDPM_LOCK_ASSERT(sc);
 sts = AMDPM_SMBINW(sc, AMDSMB_GLOBAL_STATUS);

 AMDPM_DEBUG(printf("amdpm: busy? STS=0x%x\n", sts));

 return (~(sts & AMDSMB_GS_HST_STS));
}
