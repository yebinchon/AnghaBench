
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exitWithStatus () ;
 int fprintf (int ,char*,int) ;
 int stderr ;
 scalar_t__ stop ;
 int tenthousandsCount ;
 int writeTestsPerformed (int ) ;

__attribute__((used)) static void checkEarlyExit( void )
{

    ++tenthousandsCount;
    if ( stop ) {
        writeTestsPerformed( 0 );
        exitWithStatus();
    }
    fprintf( stderr, "\r%3d0000", tenthousandsCount );

}
