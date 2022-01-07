
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int16 ;


 int errorCount ;
 int fflush (int ) ;
 int fprintf (int ,char*,int,...) ;
 int fputs (char*,int ) ;
 int stderr ;
 int stdout ;
 int tenthousandsCount ;
 int writeFunctionName (int ) ;

__attribute__((used)) static void writeTestsPerformed( int16 count )
{

    if ( tenthousandsCount ) {
        fprintf(
            stderr, "\r%d%04d tests performed", tenthousandsCount, count );
    }
    else {
        fprintf( stderr, "\r%d tests performed", count );
    }
    if ( errorCount ) {
        fprintf(
            stderr,
            "; %d error%s found.\n",
            errorCount,
            ( errorCount == 1 ) ? "" : "s"
        );
    }
    else {
        fputs( ".\n", stderr );
        fputs( "No errors found in ", stdout );
        writeFunctionName( stdout );
        fputs( ".\n", stdout );
        fflush( stdout );
    }

}
