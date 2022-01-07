
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t UBYTE ;
typedef size_t BYTE ;


 size_t UNSIGNED ;
 char* digits ;
 int wrtchr (char) ;

void gprintn(BYTE number, BYTE radix, BYTE signed_value)
{
  UBYTE i;

  if(number < 0 && signed_value) {
    wrtchr('-');
    number = -number;
  }
  if((i = (UBYTE)number / (UBYTE)radix) != 0)
    gprintn(i, radix, UNSIGNED);
  wrtchr(digits[(UBYTE)number % (UBYTE)radix]);
}
