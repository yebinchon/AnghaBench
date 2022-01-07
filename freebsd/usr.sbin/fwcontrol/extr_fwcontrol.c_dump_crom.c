
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;


 char* DUMP_FORMAT ;
 int printf (char*,int ,int ,int ,int ,int ,int ,int ,int ) ;

__attribute__((used)) static void
dump_crom(u_int32_t *p)
{
 int len=1024, i;

 for (i = 0; i < len/(4*8); i ++) {
  printf(DUMP_FORMAT,
   p[0], p[1], p[2], p[3], p[4], p[5], p[6], p[7]);
  p += 8;
 }
}
