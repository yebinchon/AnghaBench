
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* digs ;

void
addnum(char *buf, int wdth, int line)
{
 char *pt = buf + wdth;

 do {
  *--pt = digs[line % 10];
  line /= 10;
 } while (line && (pt > buf));




 while (pt > buf)
  *--pt = ' ';
}
