
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bits32 ;
typedef int FILE ;


 int writeHex_bits16 (int,int *) ;

void writeHex_bits32( bits32 a, FILE *stream )
{

    writeHex_bits16( a>>16, stream );
    writeHex_bits16( a, stream );

}
