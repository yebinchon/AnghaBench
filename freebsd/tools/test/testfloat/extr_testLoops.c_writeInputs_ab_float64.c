
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fputs (char*,int ) ;
 int stdout ;
 int testCases_a_float64 ;
 int testCases_b_float64 ;
 int writeHex_float64 (int ,int ) ;

__attribute__((used)) static void writeInputs_ab_float64( void )
{

    writeHex_float64( testCases_a_float64, stdout );
    fputs( "  ", stdout );
    writeHex_float64( testCases_b_float64, stdout );

}
