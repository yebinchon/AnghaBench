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
struct table_config {int /*<<< orphan*/  astate; TYPE_1__* ta; scalar_t__ linked; TYPE_2__ no; } ;
struct namedobj_instance {int dummy; } ;
struct ip_fw_chain {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* change_ti ) (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ;int /*<<< orphan*/  refcnt; } ;

/* Variables and functions */
 struct namedobj_instance* FUNC0 (struct ip_fw_chain*) ; 
 int /*<<< orphan*/  FUNC1 (struct ip_fw_chain*) ; 
 int /*<<< orphan*/  FUNC2 (struct ip_fw_chain*) ; 
 struct table_info* FUNC3 (struct ip_fw_chain*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct namedobj_instance*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (struct table_info*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC7(struct ip_fw_chain *ch, struct table_config *tc)
{
	struct namedobj_instance *ni;
	struct table_info *ti;
	uint16_t kidx;

	FUNC1(ch);
	FUNC2(ch);

	ni = FUNC0(ch);
	kidx = tc->no.kidx;

	/* Clear state. @ti copy is already saved inside @tc */
	FUNC4(ni, &tc->no);
	ti = FUNC3(ch, kidx);
	FUNC5(ti, 0, sizeof(struct table_info));
	tc->linked = 0;
	tc->ta->refcnt--;

	/* Notify algo on real @ti address */
	if (tc->ta->change_ti != NULL)
		tc->ta->change_ti(tc->astate, NULL);
}