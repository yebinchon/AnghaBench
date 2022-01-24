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
struct option {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * xopts ; 
 int /*<<< orphan*/  xopts_alloc ; 
 scalar_t__ xopts_nr ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 

__attribute__((used)) static int FUNC2(const struct option *opt,
			  const char *arg, int unset)
{
	if (unset)
		return 0;

	FUNC0(xopts, xopts_nr + 1, xopts_alloc);
	xopts[xopts_nr++] = FUNC1(arg);
	return 0;
}