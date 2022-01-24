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
typedef  scalar_t__ wchar_t ;
struct csnode {scalar_t__ csn_min; scalar_t__ csn_max; } ;

/* Variables and functions */

__attribute__((used)) static __inline int
FUNC0(struct csnode *t, wchar_t ch)
{

	if (ch < t->csn_min)
		return (-1);
	if (ch > t->csn_max)
		return (1);
	return (0);
}