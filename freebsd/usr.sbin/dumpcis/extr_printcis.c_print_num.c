
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;


 int errx (int,char*,int) ;
 int printf (char const*,int ) ;
 int tpl16 (int *) ;
 int tpl24 (int *) ;
 int tpl32 (int *) ;

__attribute__((used)) static int
print_num(int sz, const char *fmt, u_char *p, int ofs)
{
 switch (sz) {
 case 0:
 case 0x10:
  return 0;
 case 1:
 case 0x11:
  printf(fmt, *p + ofs);
  return 1;
 case 2:
 case 0x12:
  printf(fmt, tpl16(p) + ofs);
  return 2;
 case 0x13:
  printf(fmt, tpl24(p) + ofs);
  return 3;
 case 3:
 case 0x14:
  printf(fmt, tpl32(p) + ofs);
  return 4;
 }
 errx(1, "print_num(0x%x): Illegal arguments", sz);

}
