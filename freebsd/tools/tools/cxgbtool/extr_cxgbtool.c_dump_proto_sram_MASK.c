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
typedef  int uint8_t ;
struct ch_eeprom {int* data; int len; int /*<<< orphan*/  offset; } ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  CHELSIO_GET_EEPROM ; 
 int /*<<< orphan*/  PROTO_SRAM_EEPROM_ADDR ; 
 int PROTO_SRAM_LINES ; 
 int PROTO_SRAM_LINE_NIBBLES ; 
 int PROTO_SRAM_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int*,int) ; 
 scalar_t__ FUNC1 (char const*,int /*<<< orphan*/ ,struct ch_eeprom*) ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 int /*<<< orphan*/  FUNC4 (char) ; 

__attribute__((used)) static int
FUNC5(const char *iff_name)
{
	int i, j;
	uint8_t buf[PROTO_SRAM_SIZE];
	struct ch_eeprom ee;
	uint8_t *p = buf;

	FUNC0(buf, sizeof(buf));
	ee.offset = PROTO_SRAM_EEPROM_ADDR;
	ee.data = p;
	ee.len = sizeof(buf);
	if (FUNC1(iff_name, CHELSIO_GET_EEPROM, &ee))
		FUNC2(1, "show protocol sram");

	for (i = 0; i < PROTO_SRAM_LINES; i++) {
		for (j = PROTO_SRAM_LINE_NIBBLES - 1; j >= 0; j--) {
			int nibble_idx = i * PROTO_SRAM_LINE_NIBBLES + j;
			uint8_t nibble = p[nibble_idx / 2];

			if (nibble_idx & 1)
				nibble >>= 4;
			else
				nibble &= 0xf;
			FUNC3("%x", nibble);
		}
		FUNC4('\n');
	}
	return 0;
}