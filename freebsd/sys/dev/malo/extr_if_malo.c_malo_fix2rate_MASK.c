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
 int FUNC0 (int const*) ; 

__attribute__((used)) static int
FUNC1(int fix_rate)
{
	static const int rates[] =
	    { 2, 4, 11, 22, 12, 18, 24, 36, 48, 96, 108 };
	return (fix_rate < FUNC0(rates) ? rates[fix_rate] : 0);
}