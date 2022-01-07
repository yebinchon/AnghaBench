
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int hexval (char const) ;

__attribute__((used)) static int get_hex_color(const char *in, unsigned char *out)
{
 unsigned int val;
 val = (hexval(in[0]) << 4) | hexval(in[1]);
 if (val & ~0xff)
  return -1;
 *out = val;
 return 0;
}
