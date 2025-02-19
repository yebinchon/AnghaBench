
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 double HISTORICAL_SCALE_2 ;
 int _PATH_CALLG_BLURB ;
 scalar_t__ bflag ;
 double hz ;
 int printblurb (int ) ;
 int printf (char*,...) ;
 double printtime ;
 double scale ;

void
gprofheader(void)
{

    if ( bflag ) {
 printblurb( _PATH_CALLG_BLURB );
    }
    printf( "\ngranularity: each sample hit covers %g byte(s)" ,
     scale * HISTORICAL_SCALE_2 );
    if ( printtime > 0.0 ) {
 printf( " for %.2f%% of %.2f seconds\n\n" ,
  100.0/printtime , printtime / hz );
    } else {
 printf( " no time propagated\n\n" );



 printtime = 1.0;
    }
    printf( "%6.6s %5.5s %7.7s %11.11s %7.7s/%-7.7s     %-8.8s\n" ,
 "" , "" , "" , "" , "called" , "total" , "parents");
    printf( "%-6.6s %5.5s %7.7s %11.11s %7.7s+%-7.7s %-8.8s\t%5.5s\n" ,
 "index" , "%time" , "self" , "descendents" ,
 "called" , "self" , "name" , "index" );
    printf( "%6.6s %5.5s %7.7s %11.11s %7.7s/%-7.7s     %-8.8s\n" ,
 "" , "" , "" , "" , "called" , "total" , "children");
    printf( "\n" );
}
