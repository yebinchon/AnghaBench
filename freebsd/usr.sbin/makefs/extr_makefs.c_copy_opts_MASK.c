#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ name; } ;
typedef  TYPE_1__ option_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (size_t,int) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ,TYPE_1__ const*,size_t) ; 

option_t *
FUNC2(const option_t *o)
{
	size_t i;

	for (i = 0; o[i].name; i++)
		continue;
	i++;
	return FUNC1(FUNC0(i, sizeof(*o)), o, i * sizeof(*o));
}