
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t UINT16 ;
typedef scalar_t__ INT8 ;
typedef size_t INT16 ;


 scalar_t__ UNSIGNED ;
 char* digits ;
 int wrtchr (char) ;

void gprintln(INT16 number, INT8 radix, INT8 signed_value)
{
  UINT16 l;

  if(number < 0 && signed_value) {
    wrtchr('-');
    number = -number;
  }
  if((l = (UINT16)number / (UINT16)radix) != 0)
    gprintln(l, radix, UNSIGNED);
  wrtchr(digits[(UINT16)number % (UINT16)radix]);
}
