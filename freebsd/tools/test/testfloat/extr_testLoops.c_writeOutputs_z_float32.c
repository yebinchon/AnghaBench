
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8 ;
typedef int float32 ;


 int fputc (char,int ) ;
 int fputs (char*,int ) ;
 int stdout ;
 char* testName ;
 char* trueName ;
 int writeHex_float32 (int ,int ) ;
 int writeHex_float_flags (int ,int ) ;

__attribute__((used)) static void
 writeOutputs_z_float32(
     float32 trueZ, uint8 trueFlags, float32 testZ, uint8 testFlags )
{

    fputs( trueName, stdout );
    fputs( ": ", stdout );
    writeHex_float32( trueZ, stdout );
    fputc( ' ', stdout );
    writeHex_float_flags( trueFlags, stdout );
    fputs( "  ", stdout );
    fputs( testName, stdout );
    fputs( ": ", stdout );
    writeHex_float32( testZ, stdout );
    fputc( ' ', stdout );
    writeHex_float_flags( testFlags, stdout );
    fputc( '\n', stdout );

}
