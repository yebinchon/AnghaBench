
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int16 ;


 int TRUE ;
 int anyErrors ;
 int errorCount ;
 int exitWithStatus () ;
 int fputc (char,int ) ;
 int fputs (char*,int ) ;
 int stderr ;
 int stdout ;
 scalar_t__ stop ;
 int writeFunctionName (int ) ;
 int writeTestsPerformed (int ) ;

__attribute__((used)) static void writeErrorFound( int16 count )
{

    fputc( '\r', stderr );
    if ( errorCount == 1 ) {
        fputs( "Errors found in ", stdout );
        writeFunctionName( stdout );
        fputs( ":\n", stdout );
    }
    if ( stop ) {
        writeTestsPerformed( count );
        exitWithStatus();
    }
    anyErrors = TRUE;

}
