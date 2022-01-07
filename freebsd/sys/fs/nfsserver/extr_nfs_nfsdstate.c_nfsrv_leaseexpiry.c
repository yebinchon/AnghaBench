
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ time_t ;
struct TYPE_2__ {scalar_t__ nsf_eograce; } ;


 scalar_t__ NFSD_MONOSEC ;
 int NFSRV_LEASEDELTA ;
 int nfsrv_lease ;
 TYPE_1__ nfsrv_stablefirst ;

__attribute__((used)) static time_t
nfsrv_leaseexpiry(void)
{

 if (nfsrv_stablefirst.nsf_eograce > NFSD_MONOSEC)
  return (NFSD_MONOSEC + 2 * (nfsrv_lease + NFSRV_LEASEDELTA));
 return (NFSD_MONOSEC + nfsrv_lease + NFSRV_LEASEDELTA);
}
