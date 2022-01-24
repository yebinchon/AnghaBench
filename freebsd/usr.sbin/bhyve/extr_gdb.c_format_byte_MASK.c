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

/* Variables and functions */
 int FUNC0 (int) ; 

__attribute__((used)) static void
FUNC1(uint8_t v, uint8_t *buf)
{

	buf[0] = FUNC0(v >> 4);
	buf[1] = FUNC0(v & 0xf);
}