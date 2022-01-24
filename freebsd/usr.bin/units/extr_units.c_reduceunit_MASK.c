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
struct unittype {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct unittype*,int) ; 

__attribute__((used)) static int 
FUNC1(struct unittype * theunit)
{
	int ret;

	ret = 1;
	while (ret & 1) {
		ret = FUNC0(theunit, 0) | FUNC0(theunit, 1);
		if (ret & 4)
			return 1;
	}
	return 0;
}