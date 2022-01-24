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
struct cryptocap {int cc_flags; } ;

/* Variables and functions */
 struct cryptocap* FUNC0 (int) ; 

int
FUNC1(int hid)
{
	struct cryptocap *cap = FUNC0(hid);
	return cap != NULL ? cap->cc_flags : 0;
}