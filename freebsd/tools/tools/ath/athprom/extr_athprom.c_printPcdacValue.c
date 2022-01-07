
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int EEP_SCALE ;
 int fprintf (int *,char*,int,int) ;

__attribute__((used)) static void
printPcdacValue(FILE *fd, int v)
{
 fprintf(fd, "%2d.%02d", v / EEP_SCALE, v % EEP_SCALE);
}
