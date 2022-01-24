#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct tid_info {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  kidx; } ;
struct table_config {int /*<<< orphan*/  astate; struct table_algo* ta; TYPE_1__ no; } ;
struct table_algo {int /*<<< orphan*/  (* foreach ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct dump_args*) ;} ;
struct sockopt_data {scalar_t__ valsize; } ;
struct ip_fw_chain {int dummy; } ;
struct dump_args {int error; int /*<<< orphan*/  ti; struct sockopt_data* sd; struct table_config* tc; struct ip_fw_chain* ch; } ;
struct _ipfw_obj_header {int dummy; } ;
struct TYPE_5__ {scalar_t__ size; } ;
typedef  TYPE_2__ ipfw_xtable_info ;
typedef  int /*<<< orphan*/  ipfw_obj_header ;
typedef  int /*<<< orphan*/  ip_fw3_opheader ;
typedef  int /*<<< orphan*/  da ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ip_fw_chain*) ; 
 int EINVAL ; 
 int ENOMEM ; 
 int ESRCH ; 
 int /*<<< orphan*/  FUNC1 (struct ip_fw_chain*) ; 
 int /*<<< orphan*/  FUNC2 (struct ip_fw_chain*) ; 
 int /*<<< orphan*/  FUNC3 (struct ip_fw_chain*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dump_table_tentry ; 
 int /*<<< orphan*/  FUNC4 (struct ip_fw_chain*,struct table_config*,TYPE_2__*) ; 
 struct table_config* FUNC5 (int /*<<< orphan*/ ,struct tid_info*) ; 
 scalar_t__ FUNC6 (struct sockopt_data*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct dump_args*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (struct _ipfw_obj_header*,struct tid_info*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct dump_args*) ; 

__attribute__((used)) static int
FUNC10(struct ip_fw_chain *ch, ip_fw3_opheader *op3,
    struct sockopt_data *sd)
{
	struct _ipfw_obj_header *oh;
	ipfw_xtable_info *i;
	struct tid_info ti;
	struct table_config *tc;
	struct table_algo *ta;
	struct dump_args da;
	uint32_t sz;

	sz = sizeof(ipfw_obj_header) + sizeof(ipfw_xtable_info);
	oh = (struct _ipfw_obj_header *)FUNC6(sd, sz);
	if (oh == NULL)
		return (EINVAL);

	i = (ipfw_xtable_info *)(oh + 1);
	FUNC8(oh, &ti);

	FUNC1(ch);
	if ((tc = FUNC5(FUNC0(ch), &ti)) == NULL) {
		FUNC2(ch);
		return (ESRCH);
	}
	FUNC4(ch, tc, i);

	if (sd->valsize < i->size) {

		/*
		 * Submitted buffer size is not enough.
		 * WE've already filled in @i structure with
		 * relevant table info including size, so we
		 * can return. Buffer will be flushed automatically.
		 */
		FUNC2(ch);
		return (ENOMEM);
	}

	/*
	 * Do the actual dump in eXtended format
	 */
	FUNC7(&da, 0, sizeof(da));
	da.ch = ch;
	da.ti = FUNC3(ch, tc->no.kidx);
	da.tc = tc;
	da.sd = sd;

	ta = tc->ta;

	ta->foreach(tc->astate, da.ti, dump_table_tentry, &da);
	FUNC2(ch);

	return (da.error);
}