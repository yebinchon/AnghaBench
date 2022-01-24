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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 

void
FUNC1(unsigned base, unsigned char *buf, unsigned int size)
{
    unsigned offset;

    for (offset = 0; offset < size; ++offset) {
        if (!(offset % 16)) FUNC0("\n0x%4.4x: ", base + offset);
        else if (!(offset % 8)) FUNC0(" ");
        FUNC0("%2.2x ", (unsigned char)buf[offset]);
    }
}