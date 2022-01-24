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
typedef  scalar_t__ uint16_t ;
typedef  int /*<<< orphan*/  u_short ;
struct pf_frent {int fe_len; scalar_t__ fe_off; int /*<<< orphan*/  fe_m; scalar_t__ fe_mff; } ;
struct pf_fragment_cmp {scalar_t__ frc_af; int /*<<< orphan*/  frc_id; } ;
struct pf_fragment {int fr_maxlen; int fr_holes; int /*<<< orphan*/  fr_queue; int /*<<< orphan*/  fr_timeout; int /*<<< orphan*/  fr_entries; int /*<<< orphan*/  fr_firstoff; } ;
struct TYPE_2__ {scalar_t__ fe_off; scalar_t__ fe_len; int /*<<< orphan*/  fe_mff; } ;

/* Variables and functions */
 scalar_t__ AF_INET ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ IP_MAXPACKET ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  M_NOWAIT ; 
 int /*<<< orphan*/  PFRES_FRAG ; 
 int /*<<< orphan*/  PFRES_MEMORY ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct pf_fragment*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct pf_frent* FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,struct pf_fragment*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct pf_frent* FUNC10 (struct pf_frent*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  V_pf_frag_tree ; 
 int /*<<< orphan*/  V_pf_frag_z ; 
 int /*<<< orphan*/  V_pf_fragqueue ; 
 int /*<<< orphan*/  V_pf_frent_z ; 
 int /*<<< orphan*/  fr_next ; 
 int /*<<< orphan*/  frag_next ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct pf_fragment* FUNC14 (struct pf_fragment_cmp*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  pf_frag_tree ; 
 int /*<<< orphan*/  pf_fragq ; 
 scalar_t__ FUNC16 (struct pf_fragment*,struct pf_frent*,struct pf_frent*) ; 
 struct pf_frent* FUNC17 (struct pf_fragment*,struct pf_frent*) ; 
 int /*<<< orphan*/  FUNC18 (struct pf_fragment*,struct pf_frent*) ; 
 int /*<<< orphan*/  time_uptime ; 
 struct pf_fragment* FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,struct pf_frent*) ; 

__attribute__((used)) static struct pf_fragment *
FUNC21(struct pf_fragment_cmp *key, struct pf_frent *frent,
    u_short *reason)
{
	struct pf_frent		*after, *next, *prev;
	struct pf_fragment	*frag;
	uint16_t		total;

	FUNC2();

	/* No empty fragments. */
	if (frent->fe_len == 0) {
		FUNC0(("bad fragment: len 0"));
		goto bad_fragment;
	}

	/* All fragments are 8 byte aligned. */
	if (frent->fe_mff && (frent->fe_len & 0x7)) {
		FUNC0(("bad fragment: mff and len %d", frent->fe_len));
		goto bad_fragment;
	}

	/* Respect maximum length, IP_MAXPACKET == IPV6_MAXPACKET. */
	if (frent->fe_off + frent->fe_len > IP_MAXPACKET) {
		FUNC0(("bad fragment: max packet %d",
		    frent->fe_off + frent->fe_len));
		goto bad_fragment;
	}

	FUNC0((key->frc_af == AF_INET ?
	    "reass frag %d @ %d-%d" : "reass frag %#08x @ %d-%d",
	    key->frc_id, frent->fe_off, frent->fe_off + frent->fe_len));

	/* Fully buffer all of the fragments in this fragment queue. */
	frag = FUNC14(key, &V_pf_frag_tree);

	/* Create a new reassembly queue for this packet. */
	if (frag == NULL) {
		frag = FUNC19(V_pf_frag_z, M_NOWAIT);
		if (frag == NULL) {
			FUNC15();
			frag = FUNC19(V_pf_frag_z, M_NOWAIT);
			if (frag == NULL) {
				FUNC4(reason, PFRES_MEMORY);
				goto drop_fragment;
			}
		}

		*(struct pf_fragment_cmp *)frag = *key;
		FUNC13(frag->fr_firstoff, 0, sizeof(frag->fr_firstoff));
		FUNC13(frag->fr_entries, 0, sizeof(frag->fr_entries));
		frag->fr_timeout = time_uptime;
		frag->fr_maxlen = frent->fe_len;
		frag->fr_holes = 1;
		FUNC7(&frag->fr_queue);

		FUNC3(pf_frag_tree, &V_pf_frag_tree, frag);
		FUNC8(&V_pf_fragqueue, frag, frag_next);

		/* We do not have a previous fragment, cannot fail. */
		FUNC16(frag, frent, NULL);

		return (frag);
	}

	FUNC1(!FUNC5(&frag->fr_queue), ("!TAILQ_EMPTY()->fr_queue"));

	/* Remember maximum fragment len for refragmentation. */
	if (frent->fe_len > frag->fr_maxlen)
		frag->fr_maxlen = frent->fe_len;

	/* Maximum data we have seen already. */
	total = FUNC9(&frag->fr_queue, pf_fragq)->fe_off +
		FUNC9(&frag->fr_queue, pf_fragq)->fe_len;

	/* Non terminal fragments must have more fragments flag. */
	if (frent->fe_off + frent->fe_len < total && !frent->fe_mff)
		goto bad_fragment;

	/* Check if we saw the last fragment already. */
	if (!FUNC9(&frag->fr_queue, pf_fragq)->fe_mff) {
		if (frent->fe_off + frent->fe_len > total ||
		    (frent->fe_off + frent->fe_len == total && frent->fe_mff))
			goto bad_fragment;
	} else {
		if (frent->fe_off + frent->fe_len == total && !frent->fe_mff)
			goto bad_fragment;
	}

	/* Find neighbors for newly inserted fragment */
	prev = FUNC17(frag, frent);
	if (prev == NULL) {
		after = FUNC6(&frag->fr_queue);
		FUNC1(after != NULL, ("after != NULL"));
	} else {
		after = FUNC10(prev, fr_next);
	}

	if (prev != NULL && prev->fe_off + prev->fe_len > frent->fe_off) {
		uint16_t precut;

		precut = prev->fe_off + prev->fe_len - frent->fe_off;
		if (precut >= frent->fe_len)
			goto bad_fragment;
		FUNC0(("overlap -%d", precut));
		FUNC11(frent->fe_m, precut);
		frent->fe_off += precut;
		frent->fe_len -= precut;
	}

	for (; after != NULL && frent->fe_off + frent->fe_len > after->fe_off;
	    after = next) {
		uint16_t aftercut;

		aftercut = frent->fe_off + frent->fe_len - after->fe_off;
		FUNC0(("adjust overlap %d", aftercut));
		if (aftercut < after->fe_len) {
			FUNC11(after->fe_m, aftercut);
			after->fe_off += aftercut;
			after->fe_len -= aftercut;
			break;
		}

		/* This fragment is completely overlapped, lose it. */
		next = FUNC10(after, fr_next);
		FUNC18(frag, after);
		FUNC12(after->fe_m);
		FUNC20(V_pf_frent_z, after);
	}

	/* If part of the queue gets too long, there is not way to recover. */
	if (FUNC16(frag, frent, prev)) {
		FUNC0(("fragment queue limit exceeded"));
		goto bad_fragment;
	}

	return (frag);

bad_fragment:
	FUNC4(reason, PFRES_FRAG);
drop_fragment:
	FUNC20(V_pf_frent_z, frent);
	return (NULL);
}