
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int hex2nibble (char const) ;
 scalar_t__ ishexnumber (char const) ;

int
hex2byte(const char c[2]) {
 if (!(ishexnumber(c[0]) && ishexnumber(c[1])))
  return -1;
 return (hex2nibble(c[0]) << 4) + hex2nibble(c[1]);
}
