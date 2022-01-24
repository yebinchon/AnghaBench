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
struct sockopt_data {int valsize; } ;
struct nat64_dump_arg {struct sockopt_data* sd; struct ip_fw_chain* ch; } ;
struct ip_fw_chain {int dummy; } ;
struct TYPE_2__ {int count; int objsize; int size; } ;
typedef  TYPE_1__ ipfw_obj_lheader ;
typedef  int /*<<< orphan*/  ipfw_nat64lsn_cfg ;
typedef  int /*<<< orphan*/  ip_fw3_opheader ;
typedef  int /*<<< orphan*/  da ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ip_fw_chain*) ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  IPFW_TLV_NAT64LSN_NAME ; 
 int /*<<< orphan*/  FUNC1 (struct ip_fw_chain*) ; 
 int /*<<< orphan*/  FUNC2 (struct ip_fw_chain*) ; 
 int /*<<< orphan*/  export_config_cb ; 
 scalar_t__ FUNC3 (struct sockopt_data*,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct nat64_dump_arg*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct nat64_dump_arg*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC7(struct ip_fw_chain *ch, ip_fw3_opheader *op3,
    struct sockopt_data *sd)
{
	ipfw_obj_lheader *olh;
	struct nat64_dump_arg da;

	/* Check minimum header size */
	if (sd->valsize < sizeof(ipfw_obj_lheader))
		return (EINVAL);

	olh = (ipfw_obj_lheader *)FUNC3(sd, sizeof(*olh));

	FUNC1(ch);
	olh->count = FUNC4(FUNC0(ch),
	    IPFW_TLV_NAT64LSN_NAME);
	olh->objsize = sizeof(ipfw_nat64lsn_cfg);
	olh->size = sizeof(*olh) + olh->count * olh->objsize;

	if (sd->valsize < olh->size) {
		FUNC2(ch);
		return (ENOMEM);
	}
	FUNC6(&da, 0, sizeof(da));
	da.ch = ch;
	da.sd = sd;
	FUNC5(FUNC0(ch), export_config_cb, &da,
	    IPFW_TLV_NAT64LSN_NAME);
	FUNC2(ch);

	return (0);
}