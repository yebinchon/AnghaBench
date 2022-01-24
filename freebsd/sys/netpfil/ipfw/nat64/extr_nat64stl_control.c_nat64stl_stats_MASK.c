#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
struct sockopt_data {int valsize; } ;
struct nat64stl_cfg {int dummy; } ;
struct TYPE_5__ {size_t length; int /*<<< orphan*/  type; } ;
struct ipfw_nat64stl_stats {int count; int objsize; int /*<<< orphan*/  version; TYPE_2__ head; } ;
struct ip_fw_chain {int dummy; } ;
typedef  int /*<<< orphan*/  stats ;
struct TYPE_4__ {int /*<<< orphan*/  set; int /*<<< orphan*/  name; } ;
struct TYPE_6__ {TYPE_1__ ntlv; } ;
typedef  TYPE_3__ ipfw_obj_header ;
typedef  struct ipfw_nat64stl_stats ipfw_obj_ctlv ;
typedef  int /*<<< orphan*/  ip_fw3_opheader ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ip_fw_chain*) ; 
 int EINVAL ; 
 int ENOMEM ; 
 int ESRCH ; 
 int /*<<< orphan*/  IPFW_NAT64_VERSION ; 
 int /*<<< orphan*/  IPFW_TLV_COUNTERS ; 
 int /*<<< orphan*/  FUNC1 (struct ip_fw_chain*) ; 
 int /*<<< orphan*/  FUNC2 (struct ip_fw_chain*) ; 
 int /*<<< orphan*/  FUNC3 (struct ip_fw_chain*,struct nat64stl_cfg*,struct ipfw_nat64stl_stats*) ; 
 scalar_t__ FUNC4 (struct sockopt_data*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (struct ipfw_nat64stl_stats*,struct ipfw_nat64stl_stats*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct ipfw_nat64stl_stats*,int /*<<< orphan*/ ,int) ; 
 struct nat64stl_cfg* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC8(struct ip_fw_chain *ch, ip_fw3_opheader *op,
    struct sockopt_data *sd)
{
	struct ipfw_nat64stl_stats stats;
	struct nat64stl_cfg *cfg;
	ipfw_obj_header *oh;
	ipfw_obj_ctlv *ctlv;
	size_t sz;

	sz = sizeof(ipfw_obj_header) + sizeof(ipfw_obj_ctlv) + sizeof(stats);
	if (sd->valsize % sizeof(uint64_t))
		return (EINVAL);
	if (sd->valsize < sz)
		return (ENOMEM);
	oh = (ipfw_obj_header *)FUNC4(sd, sz);
	if (oh == NULL)
		return (EINVAL);
	FUNC6(&stats, 0, sizeof(stats));

	FUNC1(ch);
	cfg = FUNC7(FUNC0(ch), oh->ntlv.name, oh->ntlv.set);
	if (cfg == NULL) {
		FUNC2(ch);
		return (ESRCH);
	}
	FUNC3(ch, cfg, &stats);
	FUNC2(ch);

	ctlv = (ipfw_obj_ctlv *)(oh + 1);
	FUNC6(ctlv, 0, sizeof(*ctlv));
	ctlv->head.type = IPFW_TLV_COUNTERS;
	ctlv->head.length = sz - sizeof(ipfw_obj_header);
	ctlv->count = sizeof(stats) / sizeof(uint64_t);
	ctlv->objsize = sizeof(uint64_t);
	ctlv->version = IPFW_NAT64_VERSION;
	FUNC5(ctlv + 1, &stats, sizeof(stats));
	return (0);
}