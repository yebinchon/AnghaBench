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
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 

__attribute__((used)) static inline int
FUNC3(uint8_t *p, int len)
{

	if (len == 1 && FUNC0(p[0]))
		return (1);
	if (len == 2 && FUNC1(p[0]))
		return (1);
	if (len >= 3 && FUNC2(p[0]) &&
	    len == p[1] + 2)
		return (1);

	return (0);
}