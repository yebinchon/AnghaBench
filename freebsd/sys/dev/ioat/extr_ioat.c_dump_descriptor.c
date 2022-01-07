
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int printf (char*,...) ;

__attribute__((used)) static void
dump_descriptor(void *hw_desc)
{
 int i, j;

 for (i = 0; i < 2; i++) {
  for (j = 0; j < 8; j++)
   printf("%08x ", ((uint32_t *)hw_desc)[i * 8 + j]);
  printf("\n");
 }
}
