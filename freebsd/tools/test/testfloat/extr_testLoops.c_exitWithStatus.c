
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EXIT_FAILURE ;
 int EXIT_SUCCESS ;
 scalar_t__ anyErrors ;
 int exit (int ) ;

void exitWithStatus( void )
{

    exit( anyErrors ? EXIT_FAILURE : EXIT_SUCCESS );

}
