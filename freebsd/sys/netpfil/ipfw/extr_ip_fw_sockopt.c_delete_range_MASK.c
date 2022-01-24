#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct ip_fw_chain {int n_rules; int /*<<< orphan*/  static_len; struct ip_fw** map; } ;
struct ip_fw {int dummy; } ;
struct TYPE_5__ {int flags; scalar_t__ end_rule; scalar_t__ start_rule; } ;
typedef  TYPE_1__ ipfw_range_tlv ;

/* Variables and functions */
 int ENOMEM ; 
 scalar_t__ IPFW_DEFAULT_RULE ; 
 int IPFW_RCFLAG_DYNAMIC ; 
 int IPFW_RCFLAG_RANGE ; 
 int /*<<< orphan*/  FUNC0 (struct ip_fw_chain*) ; 
 int /*<<< orphan*/  FUNC1 (struct ip_fw_chain*) ; 
 int /*<<< orphan*/  M_IPFW ; 
 scalar_t__ FUNC2 (struct ip_fw*) ; 
 int /*<<< orphan*/  UINT32_MAX ; 
 int /*<<< orphan*/  FUNC3 (struct ip_fw**,struct ip_fw**,int) ; 
 int /*<<< orphan*/  FUNC4 (struct ip_fw**,int /*<<< orphan*/ ) ; 
 struct ip_fw** FUNC5 (struct ip_fw_chain*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct ip_fw_chain*,TYPE_1__*) ; 
 int FUNC7 (struct ip_fw_chain*,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (struct ip_fw*) ; 
 scalar_t__ FUNC9 (struct ip_fw*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (struct ip_fw_chain*,struct ip_fw**,struct ip_fw*) ; 
 int /*<<< orphan*/  FUNC11 (struct ip_fw*) ; 
 struct ip_fw** FUNC12 (struct ip_fw_chain*,struct ip_fw**,int) ; 
 int /*<<< orphan*/  FUNC13 (struct ip_fw_chain*,struct ip_fw**) ; 

__attribute__((used)) static int
FUNC14(struct ip_fw_chain *chain, ipfw_range_tlv *rt, int *ndel)
{
	struct ip_fw *reap, *rule, **map;
	int end, start;
	int i, n, ndyn, ofs;

	reap = NULL;
	FUNC0(chain);	/* arbitrate writers */

	/*
	 * Stage 1: Determine range to inspect.
	 * Range is half-inclusive, e.g [start, end).
	 */
	start = 0;
	end = chain->n_rules - 1;

	if ((rt->flags & IPFW_RCFLAG_RANGE) != 0) {
		start = FUNC7(chain, rt->start_rule, 0);

		if (rt->end_rule >= IPFW_DEFAULT_RULE)
			rt->end_rule = IPFW_DEFAULT_RULE - 1;
		end = FUNC7(chain, rt->end_rule, UINT32_MAX);
	}

	if (rt->flags & IPFW_RCFLAG_DYNAMIC) {
		/*
		 * Requested deleting only for dynamic states.
		 */
		*ndel = 0;
		FUNC6(chain, rt);
		FUNC1(chain);
		return (0);
	}

	/* Allocate new map of the same size */
	map = FUNC5(chain, 0, 1 /* locked */);
	if (map == NULL) {
		FUNC1(chain);
		return (ENOMEM);
	}

	n = 0;
	ndyn = 0;
	ofs = start;
	/* 1. bcopy the initial part of the map */
	if (start > 0)
		FUNC3(chain->map, map, start * sizeof(struct ip_fw *));
	/* 2. copy active rules between start and end */
	for (i = start; i < end; i++) {
		rule = chain->map[i];
		if (FUNC9(rule, rt) == 0) {
			map[ofs++] = rule;
			continue;
		}

		n++;
		if (FUNC8(rule) != 0)
			ndyn++;
	}
	/* 3. copy the final part of the map */
	FUNC3(chain->map + end, map + ofs,
		(chain->n_rules - end) * sizeof(struct ip_fw *));
	/* 4. recalculate skipto cache */
	FUNC13(chain, map);
	/* 5. swap the maps (under UH_WLOCK + WHLOCK) */
	map = FUNC12(chain, map, chain->n_rules - n);
	/* 6. Remove all dynamic states originated by deleted rules */
	if (ndyn > 0)
		FUNC6(chain, rt);
	/* 7. now remove the rules deleted from the old map */
	for (i = start; i < end; i++) {
		rule = map[i];
		if (FUNC9(rule, rt) == 0)
			continue;
		chain->static_len -= FUNC2(rule);
		FUNC10(chain, &reap, rule);
	}
	FUNC1(chain);

	FUNC11(reap);
	if (map != NULL)
		FUNC4(map, M_IPFW);
	*ndel = n;
	return (0);
}