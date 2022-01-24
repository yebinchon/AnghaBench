#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_9__ ;
typedef  struct TYPE_17__   TYPE_6__ ;
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;
typedef  struct TYPE_11__   TYPE_10__ ;

/* Type definitions */
struct table_value {int dummy; } ;
struct TYPE_13__ {scalar_t__ subtype; } ;
struct table_config {TYPE_2__ no; int /*<<< orphan*/  astate; struct table_algo* ta; } ;
struct table_algo {int (* dump_tentry ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,TYPE_6__*) ;} ;
struct TYPE_15__ {int /*<<< orphan*/  s_addr; } ;
struct TYPE_11__ {TYPE_4__ addr; } ;
struct TYPE_12__ {int /*<<< orphan*/  kidx; } ;
struct TYPE_17__ {scalar_t__ subtype; TYPE_10__ k; TYPE_1__ v; int /*<<< orphan*/  masklen; } ;
struct dump_args {TYPE_6__ tent; struct table_config* tc; int /*<<< orphan*/  ch; int /*<<< orphan*/  ti; int /*<<< orphan*/  uidx; int /*<<< orphan*/  sd; } ;
struct TYPE_14__ {int /*<<< orphan*/ * s6_addr32; } ;
struct TYPE_18__ {TYPE_3__ addr6; } ;
struct TYPE_16__ {int len; TYPE_9__ k; int /*<<< orphan*/  flags; int /*<<< orphan*/  value; int /*<<< orphan*/  masklen; int /*<<< orphan*/  tbl; } ;
typedef  TYPE_5__ ipfw_table_xentry ;
typedef  TYPE_6__ ipfw_obj_tentry ;

/* Variables and functions */
 scalar_t__ AF_INET ; 
 scalar_t__ IPFW_TABLE_ADDR ; 
 int /*<<< orphan*/  IPFW_TCF_INET ; 
 struct table_value* FUNC0 (int /*<<< orphan*/ ,struct table_config*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct table_value*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_9__*,TYPE_10__*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_6__*,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,TYPE_6__*) ; 

__attribute__((used)) static int
FUNC6(void *e, void *arg)
{
	struct dump_args *da;
	struct table_config *tc;
	struct table_algo *ta;
	ipfw_table_xentry *xent;
	ipfw_obj_tentry *tent;
	struct table_value *pval;
	int error;

	da = (struct dump_args *)arg;

	tc = da->tc;
	ta = tc->ta;

	xent = (ipfw_table_xentry *)FUNC2(da->sd, sizeof(*xent));
	/* Out of memory, returning */
	if (xent == NULL)
		return (1);
	xent->len = sizeof(ipfw_table_xentry);
	xent->tbl = da->uidx;

	FUNC4(&da->tent, 0, sizeof(da->tent));
	tent = &da->tent;
	error = ta->dump_tentry(tc->astate, da->ti, e, tent);
	if (error != 0)
		return (error);

	/* Convert current format to previous one */
	xent->masklen = tent->masklen;
	pval = FUNC0(da->ch, da->tc, da->tent.v.kidx);
	xent->value = FUNC1(pval);
	/* Apply some hacks */
	if (tc->no.subtype == IPFW_TABLE_ADDR && tent->subtype == AF_INET) {
		xent->k.addr6.s6_addr32[3] = tent->k.addr.s_addr;
		xent->flags = IPFW_TCF_INET;
	} else
		FUNC3(&xent->k, &tent->k, sizeof(xent->k));

	return (0);
}