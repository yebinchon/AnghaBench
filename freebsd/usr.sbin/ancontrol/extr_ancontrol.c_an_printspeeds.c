
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef double u_int8_t ;


 int printf (char*,...) ;

__attribute__((used)) static void
an_printspeeds(const u_int8_t *w, int len)
{
 int i;

 printf("[ ");
 for (i = 0; i < len && w[i]; i++)
  printf("%2.1fMbps ", w[i] * 0.500);
 printf("]");
}
