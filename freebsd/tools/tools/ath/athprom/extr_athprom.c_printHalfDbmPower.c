
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int16_t ;
typedef int FILE ;


 int fprintf (int *,char*,int,int) ;

__attribute__((used)) static void
printHalfDbmPower(FILE *fd, int16_t power5dBm)
{
 fprintf(fd, "%2d.%d", power5dBm / 2, (power5dBm % 2) * 5);
}
