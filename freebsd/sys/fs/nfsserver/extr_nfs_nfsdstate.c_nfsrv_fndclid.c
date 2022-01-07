
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ qval; } ;
typedef TYPE_1__ nfsquad_t ;


 int NFSCLIDVECSIZE ;

__attribute__((used)) static int
nfsrv_fndclid(nfsquad_t *clidvec, nfsquad_t clid, int clidcnt)
{
 int i;


 if (clidcnt > NFSCLIDVECSIZE)
  return (1);

 for (i = 0; i < clidcnt; i++)
  if (clidvec[i].qval == clid.qval)
   return (1);
 return (0);
}
