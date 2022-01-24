#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int u_char ;
typedef  TYPE_2__* bktr_ptr_t ;
struct TYPE_6__ {int eepromAddr; int eepromSize; } ;
struct TYPE_7__ {TYPE_1__ card; } ;

/* Variables and functions */
 int EEPROMBLOCKSIZE ; 
 int FUNC0 (TYPE_2__*,int) ; 
 int FUNC1 (TYPE_2__*,int,int,int) ; 

int
FUNC2( bktr_ptr_t bktr, int offset, int count, u_char *data )
{
	int	x;
	int	addr;
	int	max;
	int	byte;

	/* get the address of the EEProm */
	addr = (int)(bktr->card.eepromAddr & 0xff);
	if ( addr == 0 )
		return( -1 );

	max = (int)(bktr->card.eepromSize * EEPROMBLOCKSIZE);
	if ( (offset + count) > max )
		return( -1 );

	/* set the start address */
	if ( FUNC1( bktr, addr, offset, -1 ) == -1 )
		return( -1 );

	/* the read cycle */
	for ( x = 0; x < count; ++x ) {
		if ( (byte = FUNC0( bktr, (addr | 1) )) == -1 )
			return( -1 );
		data[ x ] = byte;
	}

	return( 0 );
}