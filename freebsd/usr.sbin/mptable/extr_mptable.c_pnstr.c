
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MAXPNSTR ;
 int printf (char*,char*) ;
 int strncpy (char*,char*,int) ;

__attribute__((used)) static void
pnstr( char* s, int c )
{
    char string[ MAXPNSTR + 1 ];

    if ( c > MAXPNSTR )
        c = MAXPNSTR;
    strncpy( string, s, c );
    string[ c ] = '\0';
    printf( "%s", string );
}
