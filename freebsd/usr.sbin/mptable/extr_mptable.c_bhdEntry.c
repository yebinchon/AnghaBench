
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* bhd_entry_ptr ;
struct TYPE_3__ {int bus_id; int bus_info; int parent_bus; } ;


 int printf (char*,...) ;

__attribute__((used)) static void
bhdEntry( bhd_entry_ptr entry )
{

    printf( "--\nBus Hierarchy\n" );
    printf( " bus ID: %d", entry->bus_id );
    printf( " bus info: 0x%02x", entry->bus_info );
    printf( " parent bus ID: %d\n", entry->parent_bus );
}
