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
typedef  int u_char ;
typedef  int /*<<< orphan*/  pnp_id ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  PNP_SERIAL_ISOLATION ; 
 int /*<<< orphan*/  _PNP_ADDRESS ; 
 int /*<<< orphan*/  FUNC1 (int*,int) ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int pnp_rd_port ; 

__attribute__((used)) static int
FUNC4(pnp_id *p)
{
	int i, bit, valid = 0, sum = 0x6a;
	u_char *data = (u_char *)p;

	FUNC1(data, sizeof(char) * 9);
	FUNC3(_PNP_ADDRESS, PNP_SERIAL_ISOLATION);
	for (i = 0; i < 72; i++) {
		bit = FUNC2((pnp_rd_port << 2) | 0x3) == 0x55;
		FUNC0(250);	/* Delay 250 usec */

		/* Can't Short Circuit the next evaluation, so 'and' is last */
		bit = (FUNC2((pnp_rd_port << 2) | 0x3) == 0xaa) && bit;
		FUNC0(250);	/* Delay 250 usec */

		valid = valid || bit;
		if (i < 64)
			sum = (sum >> 1) |
			  (((sum ^ (sum >> 1) ^ bit) << 7) & 0xff);
		data[i / 8] = (data[i / 8] >> 1) | (bit ? 0x80 : 0);
	}

	valid = valid && (data[8] == sum);

	return (valid);
}