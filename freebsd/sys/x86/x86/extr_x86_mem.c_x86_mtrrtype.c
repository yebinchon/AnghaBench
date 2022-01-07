
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MDF_ATTRMASK ;
 int MDF_UNKNOWN ;
 int MTRRTOMRTLEN ;
 int* x86_mtrrtomrt ;

__attribute__((used)) static int
x86_mtrrtype(int flags)
{
 int i;

 flags &= MDF_ATTRMASK;

 for (i = 0; i < MTRRTOMRTLEN; i++) {
  if (x86_mtrrtomrt[i] == MDF_UNKNOWN)
   continue;
  if (flags == x86_mtrrtomrt[i])
   return (i);
 }
 return (-1);
}
