
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;


 int printf (char*,int,int,int,int,int,int) ;

__attribute__((used)) static void
dump_device_geo(u_char *p, int len)
{
 while (len >= 6) {
  printf("\twidth = %d, erase = 0x%x, read = 0x%x, write = 0x%x\n"
         "\t\tpartition = 0x%x, interleave = 0x%x\n",
         p[0], 1 << (p[1] - 1),
         1 << (p[2] - 1), 1 << (p[3] - 1),
         1 << (p[4] - 1), 1 << (p[5] - 1));
  len -= 6;
 }
}
