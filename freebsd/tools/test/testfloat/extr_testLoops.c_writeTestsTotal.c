
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ forever ;
 int fprintf (int ,char*,int) ;
 int fputs (char*,int ) ;
 int stderr ;
 int testCases_total ;

__attribute__((used)) static void writeTestsTotal( void )
{

    if ( forever ) {
        fputs( "Unbounded tests.\n", stderr );
    }
    else {
        fprintf( stderr, "\r%d tests total.\n", testCases_total );
    }

}
