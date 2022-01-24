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
 int* delays ; 
 int FUNC0 (int*) ; 
 int* rates ; 

__attribute__((used)) static int
FUNC1(int delay, int rate)
{
	int value;
	int i;

	for (i = FUNC0(delays) - 1; i > 0; i --) {
		if (delay >= delays[i])
			break;
	}
	value = i << 5;
	for (i = FUNC0(rates) - 1; i > 0; i --) {
		if (rate >= rates[i])
			break;
	}
	value |= i;
	return (value);
}