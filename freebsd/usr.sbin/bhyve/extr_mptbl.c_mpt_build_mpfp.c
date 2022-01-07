
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ vm_paddr_t ;
typedef TYPE_1__* mpfps_t ;
struct TYPE_5__ {int length; int checksum; int spec_rev; scalar_t__ pap; int signature; } ;


 int MPFP_SIG ;
 int MP_SPECREV ;
 int memcpy (int ,int ,int) ;
 int memset (TYPE_1__*,int ,int) ;
 int mpt_compute_checksum (TYPE_1__*,int) ;

__attribute__((used)) static void
mpt_build_mpfp(mpfps_t mpfp, vm_paddr_t gpa)
{

 memset(mpfp, 0, sizeof(*mpfp));
 memcpy(mpfp->signature, MPFP_SIG, 4);
 mpfp->pap = gpa + sizeof(*mpfp);
 mpfp->length = 1;
 mpfp->spec_rev = MP_SPECREV;
 mpfp->checksum = mpt_compute_checksum(mpfp, sizeof(*mpfp));
}
