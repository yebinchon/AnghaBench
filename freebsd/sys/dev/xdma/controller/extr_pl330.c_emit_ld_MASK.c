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
typedef  int uint32_t ;

/* Variables and functions */
 int DMALD ; 

__attribute__((used)) static uint32_t
FUNC0(uint8_t *buf, uint8_t burst)
{

	buf[0] = DMALD;
	if (burst)
		buf[0] |= (1 << 1) | (1 << 0);
	else
		buf[0] |= (0 << 1) | (1 << 0);

	return (1);
}