#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  scalar_t__ uint32_t ;
typedef  int /*<<< orphan*/  uint16_t ;
struct ipfw_flow_id {int dummy; } ;
struct ipfw_dyn_info {scalar_t__ direction; scalar_t__ hashval; scalar_t__ version; int /*<<< orphan*/  kidx; } ;
struct dyn_ipv4_state {void* data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct dyn_ipv4_state*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int EEXIST ; 
 int ENOMEM ; 
 scalar_t__ MATCH_UNKNOWN ; 
 int /*<<< orphan*/  V_curr_dyn_buckets ; 
 int /*<<< orphan*/  V_dyn_data_zone ; 
 int /*<<< orphan*/ * V_dyn_ipv4 ; 
 void* FUNC7 (void*,scalar_t__,int /*<<< orphan*/ ,struct ipfw_flow_id const*,void const*,int,scalar_t__,int /*<<< orphan*/ ) ; 
 struct dyn_ipv4_state* FUNC8 (struct ipfw_flow_id const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dyn_count ; 
 scalar_t__ FUNC9 (struct ipfw_flow_id const*,void const*,int,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  entry ; 
 int /*<<< orphan*/  ipv4_add ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,void*) ; 

__attribute__((used)) static int
FUNC11(void *parent, uint32_t ruleid, uint16_t rulenum,
    const struct ipfw_flow_id *pkt, const void *ulp, int pktlen,
    uint32_t hashval, struct ipfw_dyn_info *info, uint16_t fibnum,
    uint16_t kidx, uint8_t type)
{
	struct dyn_ipv4_state *s;
	void *data;
	uint32_t bucket;

	bucket = FUNC1(hashval, V_curr_dyn_buckets);
	FUNC2(bucket);
	if (info->direction == MATCH_UNKNOWN ||
	    info->kidx != kidx ||
	    info->hashval != hashval ||
	    info->version != FUNC4(bucket, ipv4_add)) {
		/*
		 * Bucket version has been changed since last lookup,
		 * do lookup again to be sure that state does not exist.
		 */
		if (FUNC9(pkt, ulp, pktlen,
		    bucket, kidx) != 0) {
			FUNC3(bucket);
			return (EEXIST);
		}
	}

	data = FUNC7(parent, ruleid, rulenum, pkt, ulp,
	    pktlen, hashval, fibnum);
	if (data == NULL) {
		FUNC3(bucket);
		return (ENOMEM);
	}

	s = FUNC8(pkt, kidx, type);
	if (s == NULL) {
		FUNC3(bucket);
		FUNC10(V_dyn_data_zone, data);
		return (ENOMEM);
	}

	s->data = data;
	FUNC0(&V_dyn_ipv4[bucket], s, entry);
	FUNC6(dyn_count);
	FUNC5(bucket, ipv4_add);
	FUNC3(bucket);
	return (0);
}