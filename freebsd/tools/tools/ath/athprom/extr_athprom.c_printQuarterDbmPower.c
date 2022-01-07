
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int16_t ;
typedef int FILE ;


 int fprintf (int *,char*,int,int) ;

__attribute__((used)) static void
printQuarterDbmPower(FILE *fd, int16_t power25dBm)
{
 fprintf(fd, "%2d.%02d", power25dBm / 4, (power25dBm % 4) * 25);
}
