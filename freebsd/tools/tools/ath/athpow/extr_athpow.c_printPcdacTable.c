
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int16_t ;
typedef int u_int ;
typedef int FILE ;


 int fprintf (int *,char*,int,int,int,int,int,int) ;

__attribute__((used)) static void
printPcdacTable(FILE *fd, u_int16_t pcdac[], u_int n)
{
 int i, halfRates = n/2;

 for (i = 0; i < halfRates; i += 2)
  fprintf(fd, "[%2u] %04x %04x [%2u] %04x %04x\n",
   i, pcdac[2*i + 1], pcdac[2*i],
   i+1, pcdac[2*(i+1) + 1], pcdac[2*(i+1)]);
}
