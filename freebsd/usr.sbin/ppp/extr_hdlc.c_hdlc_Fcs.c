
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_short ;
typedef int u_char ;


 int INITFCS ;
 int* fcstab ;

u_short
hdlc_Fcs(u_char *cp, size_t len)
{
  u_short fcs = INITFCS;

  while (len--)
    fcs = (fcs >> 8) ^ fcstab[(fcs ^ *cp++) & 0xff];

  return fcs;
}
