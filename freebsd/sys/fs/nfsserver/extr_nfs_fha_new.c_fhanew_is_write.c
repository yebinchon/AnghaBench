
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ rpcproc_t ;


 scalar_t__ NFSPROC_WRITE ;

int
fhanew_is_write(rpcproc_t procnum)
{
 if (procnum == NFSPROC_WRITE)
  return (1);
 else
  return (0);
}
