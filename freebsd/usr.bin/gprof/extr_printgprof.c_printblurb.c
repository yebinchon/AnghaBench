
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int EOF ;
 int fclose (int *) ;
 int * fopen (char const*,char*) ;
 int getc (int *) ;
 int putchar (int) ;
 int warn (char*,char const*) ;

void
printblurb(const char *blurbname)
{
    FILE *blurbfile;
    int input;

    blurbfile = fopen( blurbname , "r" );
    if ( blurbfile == ((void*)0) ) {
 warn( "%s" , blurbname );
 return;
    }
    while ( ( input = getc( blurbfile ) ) != EOF ) {
 putchar( input );
    }
    fclose( blurbfile );
}
