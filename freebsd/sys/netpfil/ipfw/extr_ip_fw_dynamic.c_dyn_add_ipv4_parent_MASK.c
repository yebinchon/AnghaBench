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
typedef  scalar_t__ uint32_t ;
typedef  int /*<<< orphan*/  uint16_t ;
struct ipfw_flow_id {int dummy; } ;
struct dyn_parent {int dummy; } ;
struct dyn_ipv4_state {struct dyn_parent* limit; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct dyn_ipv4_state*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct dyn_ipv4_state*) ; 
 scalar_t__ FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  O_LIMIT_PARENT ; 
 int /*<<< orphan*/  V_curr_dyn_buckets ; 
 int /*<<< orphan*/ * V_dyn_ipv4_parent ; 
 int /*<<< orphan*/  V_dyn_parent_zone ; 
 struct dyn_ipv4_state* FUNC9 (struct ipfw_flow_id const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct dyn_parent* FUNC10 (void*,scalar_t__,int /*<<< orphan*/ ,scalar_t__) ; 
 struct dyn_ipv4_state* FUNC11 (struct ipfw_flow_id const*,void*,scalar_t__,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  dyn_parent_count ; 
 int /*<<< orphan*/  entry ; 
 int /*<<< orphan*/  ipv4_parent_add ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,struct dyn_parent*) ; 

__attribute__((used)) static struct dyn_ipv4_state *
FUNC13(void *rule, uint32_t ruleid, uint16_t rulenum,
    const struct ipfw_flow_id *pkt, uint32_t hashval, uint32_t version,
    uint16_t kidx)
{
	struct dyn_ipv4_state *s;
	struct dyn_parent *limit;
	uint32_t bucket;

	bucket = FUNC3(hashval, V_curr_dyn_buckets);
	FUNC4(bucket);
	if (version != FUNC6(bucket, ipv4_parent_add)) {
		/*
		 * Bucket version has been changed since last lookup,
		 * do lookup again to be sure that state does not exist.
		 */
		s = FUNC11(pkt, rule, ruleid,
		    rulenum, bucket);
		if (s != NULL) {
			/*
			 * Simultaneous thread has already created this
			 * state. Just return it.
			 */
			FUNC1();
			FUNC2(s);
			FUNC5(bucket);
			return (s);
		}
	}

	limit = FUNC10(rule, ruleid, rulenum, hashval);
	if (limit == NULL) {
		FUNC5(bucket);
		return (NULL);
	}

	s = FUNC9(pkt, kidx, O_LIMIT_PARENT);
	if (s == NULL) {
		FUNC5(bucket);
		FUNC12(V_dyn_parent_zone, limit);
		return (NULL);
	}

	s->limit = limit;
	FUNC0(&V_dyn_ipv4_parent[bucket], s, entry);
	FUNC8(dyn_parent_count);
	FUNC7(bucket, ipv4_parent_add);
	FUNC1();
	FUNC2(s);
	FUNC5(bucket);
	return (s);
}