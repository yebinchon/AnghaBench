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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  int16_t ; 
 int /*<<< orphan*/  int32_t ; 
 int /*<<< orphan*/  int64_t ; 
 int /*<<< orphan*/  int8_t ; 
 int /*<<< orphan*/  uint16_t ; 
 int /*<<< orphan*/  uint32_t ; 
 int /*<<< orphan*/  uint64_t ; 
 int /*<<< orphan*/  uint8_t ; 

int
FUNC1(void)
{
	int i;

	for (i = 0; i < 1000; i++) {
		FUNC0(int8_t);
		FUNC0(uint8_t);
		FUNC0(int16_t);
		FUNC0(uint16_t);
		FUNC0(int32_t);
		FUNC0(uint32_t);
		FUNC0(int64_t);
		FUNC0(uint64_t);
	}

	return (0);
}