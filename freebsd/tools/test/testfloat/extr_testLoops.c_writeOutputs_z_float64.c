
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8 ;
typedef int float64 ;


 int fputc (char,int ) ;
 int fputs (char*,int ) ;
 int stdout ;
 char* testName ;
 char* trueName ;
 int writeHex_float64 (int ,int ) ;
 int writeHex_float_flags (int ,int ) ;

__attribute__((used)) static void
 writeOutputs_z_float64(
     float64 trueZ, uint8 trueFlags, float64 testZ, uint8 testFlags )
{

    fputs( trueName, stdout );
    fputs( ": ", stdout );
    writeHex_float64( trueZ, stdout );
    fputc( ' ', stdout );
    writeHex_float_flags( trueFlags, stdout );
    fputs( "  ", stdout );
    fputs( testName, stdout );
    fputs( ": ", stdout );
    writeHex_float64( testZ, stdout );
    fputc( ' ', stdout );
    writeHex_float_flags( testFlags, stdout );
    fputc( '\n', stdout );

}
