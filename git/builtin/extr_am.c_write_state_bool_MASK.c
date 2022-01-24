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
struct am_state {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct am_state const*,char const*,char*) ; 

__attribute__((used)) static void FUNC1(const struct am_state *state,
			     const char *name, int value)
{
	FUNC0(state, name, value ? "t" : "f");
}