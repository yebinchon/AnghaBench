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
struct bwn_mac {int /*<<< orphan*/  mac_sc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int FUNC2 (struct bwn_mac*,int*) ; 
 int /*<<< orphan*/  FUNC3 (struct bwn_mac*,int /*<<< orphan*/ ,int const) ; 
 int FUNC4 (int const*) ; 

__attribute__((used)) static void FUNC5(struct bwn_mac *mac)
{
	int	core, error, offset, i;
	uint8_t	antswlut;

	const int antswlut0_offsets[] = { 0, 4, 8, }; /* Offsets for values */
	const uint8_t antswlut0_values[][3] = {
		{ 0x2, 0x12, 0x8 }, /* Core 0 */
		{ 0x2, 0x18, 0x2 }, /* Core 1 */
	};

	if ((error = FUNC2(mac, &antswlut)))
		return;

	switch (antswlut) {
	case 0:
		for (core = 0; core < 2; core++) {
			for (i = 0; i < FUNC4(antswlut0_values[0]); i++) {
				offset = core ? 0x20 : 0x00;
				offset += antswlut0_offsets[i];
				FUNC3(mac, FUNC1(9, offset),
					       antswlut0_values[core][i]);
			}
		}
		break;
	default:
		FUNC0(mac->mac_sc, "Unsupported antswlut: %d\n", antswlut);
		break;
	}
}