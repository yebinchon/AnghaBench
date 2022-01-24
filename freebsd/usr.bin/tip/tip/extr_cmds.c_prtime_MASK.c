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
typedef  int time_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int* quant ; 
 char** sep ; 

__attribute__((used)) static void
FUNC1(char *s, time_t a)
{
	int i;
	int nums[3];

	for (i = 0; i < 3; i++) {
		nums[i] = (int)(a % quant[i]);
		a /= quant[i];
	}
	FUNC0("%s", s);
	while (--i >= 0)
		if (nums[i] || (i == 0 && nums[1] == 0 && nums[2] == 0))
			FUNC0("%d %s%c ", nums[i], sep[i],
				nums[i] == 1 ? '\0' : 's');
	FUNC0("\r\n!\r\n");
}