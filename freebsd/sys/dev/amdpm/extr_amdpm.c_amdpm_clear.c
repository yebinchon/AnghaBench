
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdpm_softc {int dummy; } ;


 int AMDPM_LOCK_ASSERT (struct amdpm_softc*) ;
 int AMDPM_SMBOUTW (struct amdpm_softc*,int ,int ) ;
 int AMDSMB_GLOBAL_STATUS ;
 int AMDSMB_GS_CLEAR_STS ;
 int DELAY (int) ;

__attribute__((used)) static int
amdpm_clear(struct amdpm_softc *sc)
{

 AMDPM_LOCK_ASSERT(sc);
 AMDPM_SMBOUTW(sc, AMDSMB_GLOBAL_STATUS, AMDSMB_GS_CLEAR_STS);
 DELAY(10);

 return (0);
}
