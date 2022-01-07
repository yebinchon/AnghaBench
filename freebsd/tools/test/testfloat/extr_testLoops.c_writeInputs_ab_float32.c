
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fputs (char*,int ) ;
 int stdout ;
 int testCases_a_float32 ;
 int testCases_b_float32 ;
 int writeHex_float32 (int ,int ) ;

__attribute__((used)) static void writeInputs_ab_float32( void )
{

    writeHex_float32( testCases_a_float32, stdout );
    fputs( "  ", stdout );
    writeHex_float32( testCases_b_float32, stdout );

}
