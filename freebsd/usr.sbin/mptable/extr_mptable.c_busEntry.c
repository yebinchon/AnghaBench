
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* bus_entry_ptr ;
struct TYPE_3__ {int bus_id; char* bus_type; } ;


 int * busses ;
 int lookupBusType (char*) ;
 int nbus ;
 int pnstr (char*,int) ;
 int printf (char*,...) ;

__attribute__((used)) static void
busEntry( bus_entry_ptr entry )
{
    int x;
    char name[ 8 ];
    char c;


    ++nbus;

    printf( "\t\t%2d", entry->bus_id );
    printf( "\t " ); pnstr( entry->bus_type, 6 ); printf( "\n" );

    for ( x = 0; x < 6; ++x ) {
 if ( (c = entry->bus_type[ x ]) == ' ' )
     break;
 name[ x ] = c;
    }
    name[ x ] = '\0';
    busses[ entry->bus_id ] = lookupBusType( name );
}
