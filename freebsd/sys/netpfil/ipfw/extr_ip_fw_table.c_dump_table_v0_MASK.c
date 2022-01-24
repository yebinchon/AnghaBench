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
typedef  int /*<<< orphan*/  ti ;
struct tid_info {int /*<<< orphan*/  ti; struct sockopt_data* sd; struct table_config* tc; struct ip_fw_chain* ch; int /*<<< orphan*/  uidx; } ;
struct TYPE_3__ {int /*<<< orphan*/  kidx; int /*<<< orphan*/  subtype; } ;
struct table_config {int /*<<< orphan*/  astate; struct table_algo* ta; TYPE_1__ no; } ;
struct table_algo {int /*<<< orphan*/  (* foreach ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct tid_info*) ;} ;
struct sockopt_data {size_t valsize; } ;
struct ip_fw_chain {int dummy; } ;
struct dump_args {int /*<<< orphan*/  ti; struct sockopt_data* sd; struct table_config* tc; struct ip_fw_chain* ch; int /*<<< orphan*/  uidx; } ;
struct TYPE_4__ {size_t cnt; size_t size; int /*<<< orphan*/  tbl; int /*<<< orphan*/  type; } ;
typedef  TYPE_2__ ipfw_xtable ;
typedef  int /*<<< orphan*/  ipfw_table_xentry ;
typedef  int /*<<< orphan*/  ip_fw3_opheader ;
typedef  int /*<<< orphan*/  da ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ip_fw_chain*) ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (struct ip_fw_chain*) ; 
 int /*<<< orphan*/  FUNC2 (struct ip_fw_chain*) ; 
 int /*<<< orphan*/  FUNC3 (struct ip_fw_chain*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dump_table_xentry ; 
 struct table_config* FUNC4 (int /*<<< orphan*/ ,struct tid_info*) ; 
 scalar_t__ FUNC5 (struct sockopt_data*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct tid_info*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct tid_info*) ; 
 size_t FUNC8 (struct ip_fw_chain*,struct table_config*) ; 

__attribute__((used)) static int
FUNC9(struct ip_fw_chain *ch, ip_fw3_opheader *op3,
    struct sockopt_data *sd)
{
	ipfw_xtable *xtbl;
	struct tid_info ti;
	struct table_config *tc;
	struct table_algo *ta;
	struct dump_args da;
	size_t sz, count;

	xtbl = (ipfw_xtable *)FUNC5(sd, sizeof(ipfw_xtable));
	if (xtbl == NULL)
		return (EINVAL);

	FUNC6(&ti, 0, sizeof(ti));
	ti.uidx = xtbl->tbl;
	
	FUNC1(ch);
	if ((tc = FUNC4(FUNC0(ch), &ti)) == NULL) {
		FUNC2(ch);
		return (0);
	}
	count = FUNC8(ch, tc);
	sz = count * sizeof(ipfw_table_xentry) + sizeof(ipfw_xtable);

	xtbl->cnt = count;
	xtbl->size = sz;
	xtbl->type = tc->no.subtype;
	xtbl->tbl = ti.uidx;

	if (sd->valsize < sz) {

		/*
		 * Submitted buffer size is not enough.
		 * WE've already filled in @i structure with
		 * relevant table info including size, so we
		 * can return. Buffer will be flushed automatically.
		 */
		FUNC2(ch);
		return (ENOMEM);
	}

	/* Do the actual dump in eXtended format */
	FUNC6(&da, 0, sizeof(da));
	da.ch = ch;
	da.ti = FUNC3(ch, tc->no.kidx);
	da.tc = tc;
	da.sd = sd;

	ta = tc->ta;

	ta->foreach(tc->astate, da.ti, dump_table_xentry, &da);
	FUNC2(ch);

	return (0);
}