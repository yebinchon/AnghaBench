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
struct ow_timing {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct ow_timing*,int*) ; 

__attribute__((used)) static void
FUNC1(device_t lldev, struct ow_timing *t, uint8_t *bytep)
{
	int i;
	uint8_t byte = 0;
	int bit;

	for (i = 0; i < 8; i++) {
		FUNC0(lldev, t, &bit);
		byte |= bit << i;
	}
	*bytep = byte;
}