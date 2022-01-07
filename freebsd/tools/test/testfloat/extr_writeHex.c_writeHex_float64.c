
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int high; int low; } ;
typedef TYPE_1__ float64 ;
typedef int FILE ;


 int fputc (char,int *) ;
 int writeHex_bits12 (int,int *) ;
 int writeHex_bits32 (int ,int *) ;
 int writeHex_bits8 (int,int *) ;

void writeHex_float64( float64 a, FILE *stream )
{

    writeHex_bits12( a.high>>20, stream );
    fputc( '.', stream );
    writeHex_bits12( a.high>>8, stream );
    writeHex_bits8( a.high, stream );
    writeHex_bits32( a.low, stream );

}
