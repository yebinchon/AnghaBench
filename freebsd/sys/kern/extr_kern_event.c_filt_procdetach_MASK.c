#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/ * p_proc; } ;
struct knote {TYPE_1__ kn_ptr; int /*<<< orphan*/  kn_knlist; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct knote*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC1(struct knote *kn)
{

	FUNC0(kn->kn_knlist, kn, 0);
	kn->kn_ptr.p_proc = NULL;
}