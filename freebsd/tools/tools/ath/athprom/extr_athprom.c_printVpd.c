
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int fprintf (int *,char*,int) ;

__attribute__((used)) static void
printVpd(FILE *fd, int vpd)
{
 fprintf(fd, "[%3d]", vpd);
}
