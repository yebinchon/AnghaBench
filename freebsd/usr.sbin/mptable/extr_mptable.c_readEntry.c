
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int err (int,char*) ;
 int pfd ;
 int read (int ,void*,int) ;

__attribute__((used)) static void
readEntry( void* entry, int size )
{
    if ( read( pfd, entry, size ) != size )
        err( 1, "readEntry" );
}
