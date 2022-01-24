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
struct terminal {int /*<<< orphan*/  tm_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct terminal*) ; 
 int /*<<< orphan*/  FUNC1 (struct terminal*) ; 
 int /*<<< orphan*/  TF_MUTE ; 

void
FUNC2(struct terminal *tm, int yes)
{

	FUNC0(tm);
	if (yes)
		tm->tm_flags |= TF_MUTE;
	else
		tm->tm_flags &= ~TF_MUTE;
	FUNC1(tm);
}