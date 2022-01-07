
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uintmax_t ;
typedef TYPE_1__* sas_entry_ptr ;
struct TYPE_3__ {int bus_id; int address_type; scalar_t__ address_length; scalar_t__ address_base; } ;





 int printf (char*,...) ;

__attribute__((used)) static void
sasEntry( sas_entry_ptr entry )
{

    printf( "--\nSystem Address Space\n");
    printf( " bus ID: %d", entry->bus_id );
    printf( " address type: " );
    switch ( entry->address_type ) {
    case 130:
 printf( "I/O address\n" );
 break;
    case 129:
 printf( "memory address\n" );
 break;
    case 128:
 printf( "prefetch address\n" );
 break;
    default:
 printf( "UNKNOWN type\n" );
 break;
    }

    printf( " address base: 0x%jx\n", (uintmax_t)entry->address_base );
    printf( " address range: 0x%jx\n", (uintmax_t)entry->address_length );
}
