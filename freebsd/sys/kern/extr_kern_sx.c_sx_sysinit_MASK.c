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
struct sx_args {int /*<<< orphan*/  sa_flags; int /*<<< orphan*/  sa_desc; int /*<<< orphan*/  sa_sx; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC1(void *arg)
{
	struct sx_args *sargs = arg;

	FUNC0(sargs->sa_sx, sargs->sa_desc, sargs->sa_flags);
}