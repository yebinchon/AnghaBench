
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ rpcproc_t ;


 scalar_t__ NFSPROC_READ ;

int
fhanew_is_read(rpcproc_t procnum)
{
 if (procnum == NFSPROC_READ)
  return (1);
 else
  return (0);
}
