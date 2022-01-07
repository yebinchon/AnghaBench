
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SEP_LINE ;
 int fflush (int ) ;
 int printf (char*) ;
 int puts (int ) ;
 int stdout ;
 int system (char*) ;

__attribute__((used)) static void
doDmesg( void )
{
    puts( SEP_LINE );

    printf( "dmesg output:\n\n" );
    fflush( stdout );
    system( "dmesg" );
}
