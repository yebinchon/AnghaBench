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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct nat64lsn_states_chunk {int dummy; } ;
struct nat64lsn_pgchunk {struct nat64lsn_pg** pgptr; } ;
struct nat64lsn_pg {int chunks_count; struct nat64lsn_pg** states_chunk; struct nat64lsn_pg** freemask_chunk; scalar_t__ base_port; int /*<<< orphan*/  proto; int /*<<< orphan*/  timestamp; struct nat64lsn_pg* freemask64; int /*<<< orphan*/ * states; } ;
struct TYPE_2__ {int /*<<< orphan*/  stats; } ;
struct nat64lsn_cfg {int states_chunks; TYPE_1__ base; } ;
struct nat64lsn_alias {int /*<<< orphan*/  portgroups_count; int /*<<< orphan*/  timestamp; int /*<<< orphan*/  portgroups; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nat64lsn_alias*) ; 
 int /*<<< orphan*/  FUNC1 (struct nat64lsn_alias*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct nat64lsn_pg*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  M_NAT64LSN ; 
 int M_NOWAIT ; 
 int M_ZERO ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ NAT64_MIN_PORT ; 
 int FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (struct nat64lsn_pg**,struct nat64lsn_pg*) ; 
 int /*<<< orphan*/  entries ; 
 int /*<<< orphan*/  FUNC10 (struct nat64lsn_pg**,int /*<<< orphan*/ ) ; 
 void* FUNC11 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (struct nat64lsn_pg**,int,int) ; 
 int FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  nat64lsn_pg_zone ; 
 int /*<<< orphan*/  nat64lsn_pgchunk_zone ; 
 int /*<<< orphan*/  nat64lsn_state_zone ; 
 int /*<<< orphan*/  spgcreated ; 
 void* FUNC14 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,struct nat64lsn_pg*) ; 

__attribute__((used)) static int
FUNC16(struct nat64lsn_cfg *cfg,
    struct nat64lsn_alias *alias, uint32_t *chunkmask,
    uint32_t *pgmask, struct nat64lsn_pgchunk **chunks,
    struct nat64lsn_pg **pgptr, uint8_t proto)
{
	struct nat64lsn_pg *pg;
	int i, pg_idx, chunk_idx;

	/* Find place in pgchunk where PG can be added */
	pg_idx = FUNC13(pgmask);
	if (pg_idx < 0)	/* no more PGs */
		return (FUNC5(1));
	/* Check that we have allocated pgchunk for given PG index */
	chunk_idx = pg_idx / 32;
	if (!FUNC3(*chunkmask, chunk_idx)) {
		chunks[chunk_idx] = FUNC14(nat64lsn_pgchunk_zone,
		    M_NOWAIT);
		if (chunks[chunk_idx] == NULL)
			return (FUNC5(2));
		FUNC7(chunkmask, chunk_idx);
		FUNC8();
	}
	/* Allocate PG and states chunks */
	pg = FUNC14(nat64lsn_pg_zone, M_NOWAIT);
	if (pg == NULL)
		return (FUNC5(3));
	pg->chunks_count = cfg->states_chunks;
	if (pg->chunks_count > 1) {
		pg->freemask_chunk = FUNC11(pg->chunks_count *
		    sizeof(uint64_t), M_NAT64LSN, M_NOWAIT);
		if (pg->freemask_chunk == NULL) {
			FUNC15(nat64lsn_pg_zone, pg);
			return (FUNC5(4));
		}
		pg->states_chunk = FUNC11(pg->chunks_count *
		    sizeof(struct nat64lsn_states_chunk *), M_NAT64LSN,
		    M_NOWAIT | M_ZERO);
		if (pg->states_chunk == NULL) {
			FUNC10(pg->freemask_chunk, M_NAT64LSN);
			FUNC15(nat64lsn_pg_zone, pg);
			return (FUNC5(5));
		}
		for (i = 0; i < pg->chunks_count; i++) {
			pg->states_chunk[i] = FUNC14(
			    nat64lsn_state_zone, M_NOWAIT);
			if (pg->states_chunk[i] == NULL)
				goto states_failed;
		}
		FUNC12(pg->freemask_chunk, 0xff,
		    sizeof(uint64_t) * pg->chunks_count);
	} else {
		pg->states = FUNC14(nat64lsn_state_zone, M_NOWAIT);
		if (pg->states == NULL) {
			FUNC15(nat64lsn_pg_zone, pg);
			return (FUNC5(6));
		}
		FUNC12(&pg->freemask64, 0xff, sizeof(uint64_t));
	}

	/* Initialize PG and hook it to pgchunk */
	FUNC6(pg->timestamp);
	pg->proto = proto;
	pg->base_port = NAT64_MIN_PORT + 64 * pg_idx;
	FUNC9(&chunks[chunk_idx]->pgptr[pg_idx % 32], pg);
	FUNC8();
	FUNC7(&pgmask[pg_idx / 32], pg_idx % 32);
	FUNC9(pgptr, pg);

	FUNC0(alias);
	FUNC2(&alias->portgroups, pg, entries);
	FUNC6(alias->timestamp);
	alias->portgroups_count++;
	FUNC1(alias);
	FUNC4(&cfg->base.stats, spgcreated);
	return (FUNC5(0));

states_failed:
	for (i = 0; i < pg->chunks_count; i++)
		FUNC15(nat64lsn_state_zone, pg->states_chunk[i]);
	FUNC10(pg->freemask_chunk, M_NAT64LSN);
	FUNC10(pg->states_chunk, M_NAT64LSN);
	FUNC15(nat64lsn_pg_zone, pg);
	return (FUNC5(7));
}