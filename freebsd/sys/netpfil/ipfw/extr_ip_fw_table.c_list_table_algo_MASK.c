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
typedef  int uint32_t ;
struct tables_config {int algo_count; struct table_algo** algo; } ;
struct table_algo {int /*<<< orphan*/  refcnt; int /*<<< orphan*/  type; int /*<<< orphan*/  name; } ;
struct sockopt_data {int valsize; } ;
struct ip_fw_chain {int dummy; } ;
struct _ipfw_obj_lheader {int size; int count; int objsize; } ;
struct TYPE_2__ {int /*<<< orphan*/  refcnt; int /*<<< orphan*/  type; int /*<<< orphan*/  algoname; } ;
typedef  TYPE_1__ ipfw_ta_info ;
typedef  int /*<<< orphan*/  ipfw_obj_lheader ;
typedef  int /*<<< orphan*/  ip_fw3_opheader ;

/* Variables and functions */
 struct tables_config* FUNC0 (struct ip_fw_chain*) ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (struct ip_fw_chain*) ; 
 int /*<<< orphan*/  FUNC2 (struct ip_fw_chain*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC4 (struct sockopt_data*,int) ; 
 scalar_t__ FUNC5 (struct sockopt_data*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC7(struct ip_fw_chain *ch, ip_fw3_opheader *op3,
    struct sockopt_data *sd)
{
	struct _ipfw_obj_lheader *olh;
	struct tables_config *tcfg;
	ipfw_ta_info *i;
	struct table_algo *ta;
	uint32_t count, n, size;

	olh = (struct _ipfw_obj_lheader *)FUNC4(sd,sizeof(*olh));
	if (olh == NULL)
		return (EINVAL);
	if (sd->valsize < olh->size)
		return (EINVAL);

	FUNC1(ch);
	tcfg = FUNC0(ch);
	count = tcfg->algo_count;
	size = count * sizeof(ipfw_ta_info) + sizeof(ipfw_obj_lheader);

	/* Fill in header regadless of buffer size */
	olh->count = count;
	olh->objsize = sizeof(ipfw_ta_info);

	if (size > olh->size) {
		olh->size = size;
		FUNC2(ch);
		return (ENOMEM);
	}
	olh->size = size;

	for (n = 1; n <= count; n++) {
		i = (ipfw_ta_info *)FUNC5(sd, sizeof(*i));
		FUNC3(i != NULL, ("previously checked buffer is not enough"));
		ta = tcfg->algo[n];
		FUNC6(i->algoname, ta->name, sizeof(i->algoname));
		i->type = ta->type;
		i->refcnt = ta->refcnt;
	}

	FUNC2(ch);

	return (0);
}