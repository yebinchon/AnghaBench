
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ rpcproc_t ;


 scalar_t__ NFSPROC_FSINFO ;
 scalar_t__ NFSPROC_FSSTAT ;
 scalar_t__ NFSPROC_NOOP ;
 scalar_t__ NFSPROC_NULL ;
 scalar_t__ NFSPROC_PATHCONF ;

int
fhanew_no_offset(rpcproc_t procnum)
{
 if (procnum == NFSPROC_FSSTAT ||
     procnum == NFSPROC_FSINFO ||
     procnum == NFSPROC_PATHCONF ||
     procnum == NFSPROC_NOOP ||
     procnum == NFSPROC_NULL)
  return (1);
 else
  return (0);
}
