
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ flag ;
typedef int FILE ;


 int fputc (char,int *) ;

void writeHex_flag( flag a, FILE *stream )
{

    fputc( a ? '1' : '0', stream );

}
