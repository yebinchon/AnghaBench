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
struct git_attr {int dummy; } ;

/* Variables and functions */
 struct git_attr const* FUNC0 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 

const struct git_attr *FUNC2(const char *name)
{
	return FUNC0(name, FUNC1(name));
}