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
typedef  int /*<<< orphan*/  uint16_t ;
typedef  int /*<<< orphan*/  ta_foreach_f ;
struct TYPE_2__ {int /*<<< orphan*/  kidx; } ;
struct table_config {int /*<<< orphan*/  astate; TYPE_1__ no; struct table_algo* ta; } ;
struct table_algo {int /*<<< orphan*/  (* foreach ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct dump_args*) ;} ;
struct namedobj_instance {int dummy; } ;
struct ip_fw_chain {int dummy; } ;
struct dump_args {int /*<<< orphan*/  ti; void* farg; int /*<<< orphan*/ * f; struct table_config* tc; struct ip_fw_chain* ch; } ;
typedef  int /*<<< orphan*/  da ;

/* Variables and functions */
 struct namedobj_instance* FUNC0 (struct ip_fw_chain*) ; 
 int ESRCH ; 
 int /*<<< orphan*/  FUNC1 (struct ip_fw_chain*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct namedobj_instance*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct dump_args*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  prepare_table_tentry ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct dump_args*) ; 

int
FUNC5(struct ip_fw_chain *ch, uint16_t kidx,
    ta_foreach_f *f, void *arg)
{
	struct namedobj_instance *ni;
	struct table_config *tc;
	struct table_algo *ta;
	struct dump_args da;

	ni = FUNC0(ch);

	tc = (struct table_config *)FUNC2(ni, kidx);
	if (tc == NULL)
		return (ESRCH);

	ta = tc->ta;

	FUNC3(&da, 0, sizeof(da));
	da.ch = ch;
	da.ti = FUNC1(ch, tc->no.kidx);
	da.tc = tc;
	da.f = f;
	da.farg = arg;

	ta->foreach(tc->astate, da.ti, prepare_table_tentry, &da);

	return (0);
}