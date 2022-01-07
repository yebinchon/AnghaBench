
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__* caddr_t ;


 int printf (char*,unsigned char) ;

void
ipsec_bindump(caddr_t buf, int len)
{
 int i;

 for (i = 0; i < len; i++)
  printf("%c", (unsigned char)buf[i]);

 return;
}
