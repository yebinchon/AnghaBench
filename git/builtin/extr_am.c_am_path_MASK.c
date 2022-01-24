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
struct am_state {int /*<<< orphan*/  dir; } ;

/* Variables and functions */
 char const* FUNC0 (char*,int /*<<< orphan*/ ,char const*) ; 

__attribute__((used)) static inline const char *FUNC1(const struct am_state *state, const char *path)
{
	return FUNC0("%s/%s", state->dir, path);
}