#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int u16 ;
struct adapter {int /*<<< orphan*/  hw; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int,int*) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 

__attribute__((used)) static void
FUNC2(struct adapter *adapter)
{
	u16 eeprom_data;
	int i, j, row = 0;

	/* Its a bit crude, but it gets the job done */
	FUNC1("\nInterface EEPROM Dump:\n");
	FUNC1("Offset\n0x0000  ");
	for (i = 0, j = 0; i < 32; i++, j++) {
		if (j == 8) { /* Make the offset block */
			j = 0; ++row;
			FUNC1("\n0x00%x0  ",row);
		}
		FUNC0(&adapter->hw, i, 1, &eeprom_data);
		FUNC1("%04x ", eeprom_data);
	}
	FUNC1("\n");
}