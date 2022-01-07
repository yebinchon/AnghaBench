
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u_char ;
typedef int device_t ;


 int CLPIP_SHAKE ;
 int * ctxmith ;
 int * ctxmitl ;
 int ppb_rstr (int ) ;
 int ppb_wdtr (int ,int ) ;

__attribute__((used)) static __inline int
clpoutbyte(u_char byte, int spin, device_t ppbus)
{

 ppb_wdtr(ppbus, ctxmitl[byte]);
 while (ppb_rstr(ppbus) & CLPIP_SHAKE)
  if (--spin == 0) {
   return (1);
  }
 ppb_wdtr(ppbus, ctxmith[byte]);
 while (!(ppb_rstr(ppbus) & CLPIP_SHAKE))
  if (--spin == 0) {
   return (1);
  }
 return (0);
}
