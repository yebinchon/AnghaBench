
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int16_t ;


 int printf (char*,...) ;

__attribute__((used)) static void
an_printwords(const u_int16_t *w, int len)
{
 int i;

 printf("[ ");
 for (i = 0; i < len; i++)
  printf("%u ", w[i]);
 printf("]");
}
