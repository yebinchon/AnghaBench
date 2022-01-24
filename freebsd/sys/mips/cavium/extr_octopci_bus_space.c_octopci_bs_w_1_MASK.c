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
typedef  scalar_t__ bus_space_handle_t ;
typedef  scalar_t__ bus_size_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 

void
FUNC1(void *t, bus_space_handle_t bsh,
    bus_size_t offset, uint8_t value)
{

	FUNC0(bsh + offset, value);
}