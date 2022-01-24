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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  channel_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static size_t
FUNC2(channel_t *chan, uint8_t *ptr, size_t size)
{
	uint8_t type;

	if (size < 1)
		return 0;

	type = *ptr++;
	FUNC1("received Control Command Not Understood (0x%2.2x)", type);

	/* we didn't send any reserved commands, just cut them off */
	FUNC0(chan);

	return 1;
}