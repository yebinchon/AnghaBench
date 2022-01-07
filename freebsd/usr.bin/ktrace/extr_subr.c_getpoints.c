
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DEF_POINTS ;
 int KTRFAC_CAPFAIL ;
 int KTRFAC_CSW ;
 int KTRFAC_FAULT ;
 int KTRFAC_FAULTEND ;
 int KTRFAC_GENIO ;
 int KTRFAC_NAMEI ;
 int KTRFAC_PSIG ;
 int KTRFAC_STRUCT ;
 int KTRFAC_SYSCALL ;
 int KTRFAC_SYSCTL ;
 int KTRFAC_SYSRET ;
 int KTRFAC_USER ;

int
getpoints(char *s)
{
 int facs = 0;

 while (*s) {
  switch(*s) {
  case 'c':
   facs |= KTRFAC_SYSCALL | KTRFAC_SYSRET;
   break;
  case 'i':
   facs |= KTRFAC_GENIO;
   break;
  case 'f':
   facs |= KTRFAC_FAULT | KTRFAC_FAULTEND;
   break;
  case 'n':
   facs |= KTRFAC_NAMEI;
   break;
  case 'p':
   facs |= KTRFAC_CAPFAIL;
   break;
  case 's':
   facs |= KTRFAC_PSIG;
   break;
  case 't':
   facs |= KTRFAC_STRUCT;
   break;
  case 'u':
   facs |= KTRFAC_USER;
   break;
  case 'w':
   facs |= KTRFAC_CSW;
   break;
  case 'y':
   facs |= KTRFAC_SYSCTL;
   break;
  case '+':
   facs |= DEF_POINTS;
   break;
  default:
   return (-1);
  }
  s++;
 }
 return (facs);
}
