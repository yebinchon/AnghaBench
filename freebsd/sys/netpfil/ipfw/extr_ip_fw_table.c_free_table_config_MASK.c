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
struct table_config {scalar_t__ linked; int /*<<< orphan*/  ti_copy; int /*<<< orphan*/  astate; TYPE_1__* ta; } ;
struct namedobj_instance {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* destroy ) (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  M_IPFW ; 
 int /*<<< orphan*/  FUNC1 (struct table_config*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC3(struct namedobj_instance *ni, struct table_config *tc)
{

	FUNC0(tc->linked == 0, ("free() on linked config"));
	/* UH lock MUST NOT be held */

	/*
	 * We're using ta without any locking/referencing.
	 * TODO: fix this if we're going to use unloadable algos.
	 */
	tc->ta->destroy(tc->astate, &tc->ti_copy);
	FUNC1(tc, M_IPFW);
}