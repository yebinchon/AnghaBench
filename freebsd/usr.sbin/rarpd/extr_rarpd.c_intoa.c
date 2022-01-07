
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
typedef int in_addr_t ;



__attribute__((used)) static char *
intoa(in_addr_t addr)
{
 char *cp;
 u_int byte;
 int n;
 static char buf[sizeof(".xxx.xxx.xxx.xxx")];

 cp = &buf[sizeof buf];
 *--cp = '\0';

 n = 4;
 do {
  byte = addr & 0xff;
  *--cp = byte % 10 + '0';
  byte /= 10;
  if (byte > 0) {
   *--cp = byte % 10 + '0';
   byte /= 10;
   if (byte > 0)
    *--cp = byte + '0';
  }
  *--cp = '.';
  addr >>= 8;
 } while (--n > 0);

 return cp + 1;
}
