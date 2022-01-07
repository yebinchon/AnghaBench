
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
typedef enum sysdecode_abi { ____Placeholder_sysdecode_abi } sysdecode_abi ;





 int SV_ABI_MASK ;
 int SV_ILP32 ;
 int SYSDECODE_ABI_CLOUDABI64 ;
 int SYSDECODE_ABI_FREEBSD ;
 int SYSDECODE_ABI_LINUX ;
 int SYSDECODE_ABI_LINUX32 ;
 int SYSDECODE_ABI_UNKNOWN ;

__attribute__((used)) static enum sysdecode_abi
syscallabi(u_int sv_flags)
{

 if (sv_flags == 0)
  return (SYSDECODE_ABI_FREEBSD);
 switch (sv_flags & SV_ABI_MASK) {
 case 129:
  return (SYSDECODE_ABI_FREEBSD);
 case 128:

  if (sv_flags & SV_ILP32)
   return (SYSDECODE_ABI_LINUX32);

  return (SYSDECODE_ABI_LINUX);
 case 130:
  return (SYSDECODE_ABI_CLOUDABI64);
 default:
  return (SYSDECODE_ABI_UNKNOWN);
 }
}
