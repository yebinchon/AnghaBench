#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint16_t ;
struct table_info {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  kidx; } ;
struct table_config {int linked; TYPE_1__* ta; int /*<<< orphan*/  astate; struct table_info ti_copy; TYPE_2__ no; } ;
struct namedobj_instance {int dummy; } ;
struct ip_fw_chain {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  refcnt; int /*<<< orphan*/  (* change_ti ) (int /*<<< orphan*/ ,struct table_info*) ;} ;

/* Variables and functions */
 struct namedobj_instance* FUNC0 (struct ip_fw_chain*) ; 
 int /*<<< orphan*/  FUNC1 (struct ip_fw_chain*) ; 
 struct table_info* FUNC2 (struct ip_fw_chain*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct namedobj_instance*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct table_info*) ; 

__attribute__((used)) static void
FUNC5(struct ip_fw_chain *ch, struct table_config *tc)
{
	struct namedobj_instance *ni;
	struct table_info *ti;
	uint16_t kidx;

	FUNC1(ch);

	ni = FUNC0(ch);
	kidx = tc->no.kidx;

	FUNC3(ni, &tc->no);

	ti = FUNC2(ch, kidx);
	*ti = tc->ti_copy;

	/* Notify algo on real @ti address */
	if (tc->ta->change_ti != NULL)
		tc->ta->change_ti(tc->astate, ti);

	tc->linked = 1;
	tc->ta->refcnt++;
}