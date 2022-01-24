#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
union nat64lsn_pgidx {int chunk; scalar_t__ index; } ;
typedef  int /*<<< orphan*/  uintmax_t ;
typedef  scalar_t__ uint8_t ;
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int uint32_t ;
struct sockopt_data {int dummy; } ;
struct nat64lsn_state {int flags; int /*<<< orphan*/  timestamp; int /*<<< orphan*/  proto; int /*<<< orphan*/  aport; int /*<<< orphan*/  sport; int /*<<< orphan*/  dport; int /*<<< orphan*/  ip_dst; TYPE_3__* host; } ;
struct nat64lsn_pg {int chunks_count; TYPE_2__** states_chunk; TYPE_1__* states; } ;
struct nat64lsn_cfg {int dummy; } ;
struct TYPE_9__ {int /*<<< orphan*/  s_addr; } ;
struct TYPE_10__ {int /*<<< orphan*/  idle; int /*<<< orphan*/  proto; scalar_t__ flags; int /*<<< orphan*/  aport; int /*<<< orphan*/  sport; int /*<<< orphan*/  dport; TYPE_4__ daddr; int /*<<< orphan*/  host6; } ;
typedef  TYPE_5__ ipfw_nat64lsn_state_v1 ;
struct TYPE_8__ {int /*<<< orphan*/  addr; } ;
struct TYPE_7__ {struct nat64lsn_state* state; } ;
struct TYPE_6__ {struct nat64lsn_state* state; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  DP_STATE ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (struct nat64lsn_pg*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct sockopt_data*,int) ; 

__attribute__((used)) static int
FUNC7(struct nat64lsn_cfg *cfg, union nat64lsn_pgidx *idx,
    struct nat64lsn_pg *pg, struct sockopt_data *sd, uint32_t *ret_count)
{
	ipfw_nat64lsn_state_v1 *s;
	struct nat64lsn_state *state;
	uint64_t freemask;
	uint32_t i, count;

	/* validate user input */
	if (idx->chunk > pg->chunks_count - 1)
		return (EINVAL);

	FUNC1(pg, idx->chunk, freemask);
	count = 64 - FUNC4(freemask);
	if (count == 0)
		return (0);	/* Try next PG/chunk */

	FUNC0(DP_STATE, "EXPORT PG 0x%16jx, count %d",
	    (uintmax_t)idx->index, count);

	s = (ipfw_nat64lsn_state_v1 *)FUNC6(sd,
	    count * sizeof(ipfw_nat64lsn_state_v1));
	if (s == NULL)
		return (ENOMEM);

	for (i = 0; i < 64; i++) {
		if (FUNC3(freemask, i))
			continue;
		state = pg->chunks_count == 1 ? &pg->states->state[i] :
		    &pg->states_chunk[idx->chunk]->state[i];

		s->host6 = state->host->addr;
		s->daddr.s_addr = FUNC5(state->ip_dst);
		s->dport = state->dport;
		s->sport = state->sport;
		s->aport = state->aport;
		s->flags = (uint8_t)(state->flags & 7);
		s->proto = state->proto;
		s->idle = FUNC2(state->timestamp);
		s++;
	}
	*ret_count = count;
	return (0);
}