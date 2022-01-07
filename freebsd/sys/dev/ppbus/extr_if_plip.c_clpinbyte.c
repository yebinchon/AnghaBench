
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u_char ;
typedef int device_t ;


 int CLPIP_SHAKE ;
 int* ctrecvh ;
 int* ctrecvl ;
 int ppb_rstr (int ) ;
 int ppb_wdtr (int ,int) ;

__attribute__((used)) static __inline int
clpinbyte(int spin, device_t ppbus)
{
 u_char c, cl;

 while ((ppb_rstr(ppbus) & CLPIP_SHAKE))
  if (!--spin) {
   return (-1);
  }
 cl = ppb_rstr(ppbus);
 ppb_wdtr(ppbus, 0x10);

 while (!(ppb_rstr(ppbus) & CLPIP_SHAKE))
  if (!--spin) {
   return (-1);
  }
 c = ppb_rstr(ppbus);
 ppb_wdtr(ppbus, 0x00);

 return (ctrecvl[cl] | ctrecvh[c]);
}
