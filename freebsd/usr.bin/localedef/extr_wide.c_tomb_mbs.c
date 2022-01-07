
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int uint8_t ;



int
tomb_mbs(char *mb, wchar_t wc)
{
 uint8_t *s = (uint8_t *)mb;
 int n = 0, c;

 if ((wc & 0xff000000U) != 0) {
  n = 4;
 } else if ((wc & 0x00ff0000U) != 0) {
  n = 3;
 } else if ((wc & 0x0000ff00U) != 0) {
  n = 2;
 } else {
  n = 1;
 }
 c = n;
 while (n) {
  n--;
  s[n] = wc & 0xff;
  wc >>= 8;
 }

 s[c] = 0;
 return (c);
}
