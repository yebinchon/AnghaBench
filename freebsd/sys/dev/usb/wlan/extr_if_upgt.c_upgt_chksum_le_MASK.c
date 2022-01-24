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
typedef  int uint32_t ;

/* Variables and functions */
 int FUNC0 (int) ; 

__attribute__((used)) static uint32_t
FUNC1(const uint32_t *buf, size_t size)
{
	size_t i;
	uint32_t crc = 0;

	for (i = 0; i < size; i += sizeof(uint32_t)) {
		crc = FUNC0(crc ^ *buf++);
		crc = FUNC0((crc >> 5) ^ (crc << 3));
	}

	return (crc);
}