
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;


 int FALSE ;
 int TRUE ;

__attribute__((used)) static int
cpuid_is_k7(u_int cpuid)
{

 switch (cpuid) {
 case 0x760:
 case 0x761:
 case 0x762:
 case 0x770:
 case 0x771:
 case 0x780:
 case 0x781:
 case 0x7a0:
  return (TRUE);
 }
 return (FALSE);
}
