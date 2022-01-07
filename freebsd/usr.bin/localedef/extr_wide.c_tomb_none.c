
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int uint8_t ;


 int mb_cur_max ;
 int werr (char*) ;

int
tomb_none(char *mb, wchar_t wc)
{
 if (mb_cur_max != 1) {
  werr("invalid or unsupported multibyte locale");
  return (-1);
 }
 *(uint8_t *)mb = (wc & 0xff);
 mb[1] = 0;
 return (1);
}
