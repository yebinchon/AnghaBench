
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EXIT_FAILURE ;
 scalar_t__ TRUE ;
 int exit (int ) ;
 scalar_t__ stop ;

__attribute__((used)) static void catchSIGINT( int signalCode )
{

    if ( stop ) exit( EXIT_FAILURE );
    stop = TRUE;

}
