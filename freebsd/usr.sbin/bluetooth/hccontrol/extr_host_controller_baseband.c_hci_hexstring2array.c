
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int hci_hexa2int8 (char const*) ;
 int strlen (char const*) ;

__attribute__((used)) static int
hci_hexstring2array(char const *s, uint8_t *a, int asize)
{
 int i, l, b;

 l = strlen(s) / 2;
 if (l > asize)
  l = asize;

 for (i = 0; i < l; i++) {
  b = hci_hexa2int8(s + i * 2);
  if (b < 0)
   return (-1);

  a[i] = (b & 0xff);
 }

 return (0);
}
