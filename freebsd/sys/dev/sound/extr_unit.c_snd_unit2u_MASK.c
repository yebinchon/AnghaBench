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
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int snd_c_shift ; 
 int snd_d_shift ; 
 int /*<<< orphan*/  u ; 

int
FUNC2(int unit)
{
	FUNC1();

	return ((unit >> (snd_c_shift + snd_d_shift)) & FUNC0(u));
}