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
 int FUNC0 (void const*,size_t) ; 
 int FUNC1 (int) ; 

__attribute__((used)) static uint32_t
FUNC2(const void *buf, size_t size)
{
	uint32_t crc;

	crc = FUNC0(buf, size);

	/* apply final XOR value as common for CRC-32 */
	crc = FUNC1(crc ^ 0xffffffffU);

	return (crc);
}