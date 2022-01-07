
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uintmax_t ;
typedef int uint8_t ;


 int parse_digit (int const) ;

__attribute__((used)) static uintmax_t
parse_integer(const uint8_t *p, size_t len)
{
 uintmax_t v;

 v = 0;
 while (len > 0) {
  v <<= 4;
  v |= parse_digit(*p);
  p++;
  len--;
 }
 return (v);
}
