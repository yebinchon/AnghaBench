
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ sbits32 ;
typedef int float32 ;
typedef int FILE ;


 int fputc (char,int *) ;
 int writeHex_bits16 (int,int *) ;
 int writeHex_bits8 (int,int *) ;

void writeHex_float32( float32 a, FILE *stream )
{

    fputc( ( ( (sbits32) a ) < 0 ) ? '8' : '0', stream );
    writeHex_bits8( a>>23, stream );
    fputc( '.', stream );
    writeHex_bits8( ( a>>16 ) & 0x7F, stream );
    writeHex_bits16( a, stream );

}
