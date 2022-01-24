#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int uintmax_t ;
typedef  TYPE_1__* sas_entry_ptr ;
struct TYPE_3__ {int bus_id; int address_type; scalar_t__ address_length; scalar_t__ address_base; } ;

/* Variables and functions */
#define  SASENTRY_TYPE_IO 130 
#define  SASENTRY_TYPE_MEMORY 129 
#define  SASENTRY_TYPE_PREFETCH 128 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 

__attribute__((used)) static void
FUNC1( sas_entry_ptr entry )
{

    FUNC0( "--\nSystem Address Space\n");
    FUNC0( " bus ID: %d", entry->bus_id );
    FUNC0( " address type: " );
    switch ( entry->address_type ) {
    case SASENTRY_TYPE_IO:
	FUNC0( "I/O address\n" );
	break;
    case SASENTRY_TYPE_MEMORY:
	FUNC0( "memory address\n" );
	break;
    case SASENTRY_TYPE_PREFETCH:
	FUNC0( "prefetch address\n" );
	break;
    default:
	FUNC0( "UNKNOWN type\n" );
	break;
    }

    FUNC0( " address base: 0x%jx\n", (uintmax_t)entry->address_base );
    FUNC0( " address range: 0x%jx\n", (uintmax_t)entry->address_length );
}