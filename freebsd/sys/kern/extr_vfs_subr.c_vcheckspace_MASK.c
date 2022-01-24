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
 int vlowat ; 
 int /*<<< orphan*/  vnlruproc ; 
 int vnlruproc_sig ; 
 int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(void)
{
	int vsp;

	vsp = FUNC0();
	if (vsp < vlowat && vnlruproc_sig == 0) {
		vnlruproc_sig = 1;
		FUNC1(vnlruproc);
	}
}