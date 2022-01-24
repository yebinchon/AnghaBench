#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_7__ ;
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
union nat64lsn_pgidx {scalar_t__ index; scalar_t__ proto; scalar_t__ addr; scalar_t__ port; } ;
typedef  scalar_t__ uint64_t ;
typedef  int uint32_t ;
struct sockopt_data {size_t valsize; scalar_t__ kbuf; } ;
struct nat64lsn_pg {int dummy; } ;
struct nat64lsn_cfg {scalar_t__ prefix4; scalar_t__ pmask4; } ;
struct ip_fw_chain {int dummy; } ;
struct TYPE_8__ {int /*<<< orphan*/  set; int /*<<< orphan*/  name; } ;
struct TYPE_12__ {TYPE_1__ ntlv; } ;
typedef  TYPE_5__ ipfw_obj_header ;
struct TYPE_10__ {scalar_t__ type; size_t length; } ;
struct TYPE_13__ {TYPE_3__ head; } ;
typedef  TYPE_6__ ipfw_obj_data ;
struct TYPE_11__ {scalar_t__ index; } ;
struct TYPE_9__ {int /*<<< orphan*/  s_addr; } ;
struct TYPE_14__ {int count; TYPE_4__ next; TYPE_2__ alias4; } ;
typedef  TYPE_7__ ipfw_nat64lsn_stg_v1 ;
typedef  int /*<<< orphan*/  ipfw_nat64lsn_state_v1 ;
typedef  int /*<<< orphan*/  ip_fw3_opheader ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nat64lsn_cfg*) ; 
 int /*<<< orphan*/  FUNC1 (struct nat64lsn_cfg*) ; 
 int /*<<< orphan*/  FUNC2 (struct ip_fw_chain*) ; 
 int EINVAL ; 
 int ENOENT ; 
 int ENOMEM ; 
 scalar_t__ IPFW_TLV_OBJDATA ; 
 int /*<<< orphan*/  FUNC3 (struct ip_fw_chain*) ; 
 int /*<<< orphan*/  FUNC4 (struct ip_fw_chain*) ; 
 scalar_t__ IPPROTO_ICMP ; 
 scalar_t__ IPPROTO_TCP ; 
 scalar_t__ IPPROTO_UDP ; 
 scalar_t__ LAST_IDX ; 
 scalar_t__ NAT64_MIN_PORT ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (struct sockopt_data*,int) ; 
 int FUNC7 (struct nat64lsn_cfg*,union nat64lsn_pgidx*,struct nat64lsn_pg*,struct sockopt_data*,int*) ; 
 struct nat64lsn_cfg* FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct nat64lsn_pg* FUNC9 (struct nat64lsn_cfg*,union nat64lsn_pgidx*) ; 
 int FUNC10 (struct nat64lsn_cfg*,struct nat64lsn_pg*,union nat64lsn_pgidx*) ; 

__attribute__((used)) static int
FUNC11(struct ip_fw_chain *ch, ip_fw3_opheader *op3,
    struct sockopt_data *sd)
{
	ipfw_obj_header *oh;
	ipfw_obj_data *od;
	ipfw_nat64lsn_stg_v1 *stg;
	struct nat64lsn_cfg *cfg;
	struct nat64lsn_pg *pg;
	union nat64lsn_pgidx idx;
	size_t sz;
	uint32_t count, total;
	int ret;

	sz = sizeof(ipfw_obj_header) + sizeof(ipfw_obj_data) +
	    sizeof(uint64_t);
	/* Check minimum header size */
	if (sd->valsize < sz)
		return (EINVAL);

	oh = (ipfw_obj_header *)sd->kbuf;
	od = (ipfw_obj_data *)(oh + 1);
	if (od->head.type != IPFW_TLV_OBJDATA ||
	    od->head.length != sz - sizeof(ipfw_obj_header))
		return (EINVAL);

	idx.index = *(uint64_t *)(od + 1);
	if (idx.index != 0 && idx.proto != IPPROTO_ICMP &&
	    idx.proto != IPPROTO_TCP && idx.proto != IPPROTO_UDP)
		return (EINVAL);
	if (idx.index == LAST_IDX)
		return (EINVAL);

	FUNC3(ch);
	cfg = FUNC8(FUNC2(ch), oh->ntlv.name, oh->ntlv.set);
	if (cfg == NULL) {
		FUNC4(ch);
		return (ENOENT);
	}
	if (idx.index == 0) {	/* Fill in starting point */
		idx.addr = cfg->prefix4;
		idx.proto = IPPROTO_ICMP;
		idx.port = NAT64_MIN_PORT;
	}
	if (idx.addr < cfg->prefix4 || idx.addr > cfg->pmask4 ||
	    idx.port < NAT64_MIN_PORT) {
		FUNC4(ch);
		return (EINVAL);
	}
	sz = sizeof(ipfw_obj_header) + sizeof(ipfw_obj_data) +
	    sizeof(ipfw_nat64lsn_stg_v1);
	if (sd->valsize < sz) {
		FUNC4(ch);
		return (ENOMEM);
	}
	oh = (ipfw_obj_header *)FUNC6(sd, sz);
	od = (ipfw_obj_data *)(oh + 1);
	od->head.type = IPFW_TLV_OBJDATA;
	od->head.length = sz - sizeof(ipfw_obj_header);
	stg = (ipfw_nat64lsn_stg_v1 *)(od + 1);
	stg->count = total = 0;
	stg->next.index = idx.index;
	/*
	 * Acquire CALLOUT_LOCK to avoid races with expiration code.
	 * Thus states, hosts and PGs will not expire while we hold it.
	 */
	FUNC0(cfg);
	ret = 0;
	do {
		pg = FUNC9(cfg, &idx);
		if (pg != NULL) {
			count = 0;
			ret = FUNC7(cfg, &idx, pg,
			    sd, &count);
			if (ret != 0)
				break;
			if (count > 0) {
				stg->count += count;
				total += count;
				/* Update total size of reply */
				od->head.length +=
				    count * sizeof(ipfw_nat64lsn_state_v1);
				sz += count * sizeof(ipfw_nat64lsn_state_v1);
			}
			stg->alias4.s_addr = FUNC5(idx.addr);
		}
		/* Determine new index */
		switch (FUNC10(cfg, pg, &idx)) {
		case -1:
			ret = ENOENT; /* End of search */
			break;
		case 1: /*
			 * Next alias address, new group may be needed.
			 * If states count is zero, use this group.
			 */
			if (stg->count == 0)
				continue;
			/* Otherwise try to create new group */
			sz += sizeof(ipfw_nat64lsn_stg_v1);
			if (sd->valsize < sz) {
				ret = ENOMEM;
				break;
			}
			/* Save next index in current group */
			stg->next.index = idx.index;
			stg = (ipfw_nat64lsn_stg_v1 *)FUNC6(sd,
			    sizeof(ipfw_nat64lsn_stg_v1));
			od->head.length += sizeof(ipfw_nat64lsn_stg_v1);
			stg->count = 0;
			break;
		}
		stg->next.index = idx.index;
	} while (ret == 0);
	FUNC1(cfg);
	FUNC4(ch);
	return ((total > 0 || idx.index == LAST_IDX) ? 0: ret);
}