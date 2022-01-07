
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MDF_UNKNOWN ;
 int MTRRTOMRTLEN ;
 int* x86_mtrrtomrt ;

__attribute__((used)) static int
x86_mtrr2mrt(int val)
{

 if (val < 0 || val >= MTRRTOMRTLEN)
  return (MDF_UNKNOWN);
 return (x86_mtrrtomrt[val]);
}
