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
typedef  scalar_t__ tcp_seq ;
struct tcpopt {int to_flags; int to_nsacks; scalar_t__ to_sacks; } ;
struct TYPE_2__ {scalar_t__ sacked_bytes; scalar_t__ last_sack_ack; scalar_t__ sack_bytes_rexmit; } ;
struct tcpcb {scalar_t__ snd_una; scalar_t__ snd_max; scalar_t__ snd_fack; TYPE_1__ sackhint; int /*<<< orphan*/  snd_holes; int /*<<< orphan*/  t_inpcb; } ;
struct sackhole {scalar_t__ end; scalar_t__ start; scalar_t__ rxmit; } ;
struct sackblk {scalar_t__ start; scalar_t__ end; } ;
typedef  int /*<<< orphan*/  sack ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 scalar_t__ FUNC2 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC5 (scalar_t__,scalar_t__) ; 
 void* FUNC6 (scalar_t__,scalar_t__) ; 
 void* FUNC7 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 struct sackhole* FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct sackhole* FUNC10 (struct sackhole*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int TCPOLEN_SACK ; 
 int /*<<< orphan*/  TCP_MAX_SACK ; 
 int TOF_SACK ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__,struct sackblk*,int) ; 
 void* FUNC12 (scalar_t__) ; 
 int /*<<< orphan*/  sackhole_head ; 
 int /*<<< orphan*/  scblink ; 
 struct sackhole* FUNC13 (struct tcpcb*,scalar_t__,scalar_t__,struct sackhole*) ; 
 int /*<<< orphan*/  FUNC14 (struct tcpcb*,struct sackhole*) ; 

int
FUNC15(struct tcpcb *tp, struct tcpopt *to, tcp_seq th_ack)
{
	struct sackhole *cur, *temp;
	struct sackblk sack, sack_blocks[TCP_MAX_SACK + 1], *sblkp;
	int i, j, num_sack_blks, sack_changed;

	FUNC0(tp->t_inpcb);

	num_sack_blks = 0;
	sack_changed = 0;
	/*
	 * If SND.UNA will be advanced by SEG.ACK, and if SACK holes exist,
	 * treat [SND.UNA, SEG.ACK) as if it is a SACK block.
	 */
	if (FUNC5(tp->snd_una, th_ack) && !FUNC8(&tp->snd_holes)) {
		sack_blocks[num_sack_blks].start = tp->snd_una;
		sack_blocks[num_sack_blks++].end = th_ack;
	}
	/*
	 * Append received valid SACK blocks to sack_blocks[], but only if we
	 * received new blocks from the other side.
	 */
	if (to->to_flags & TOF_SACK) {
		tp->sackhint.sacked_bytes = 0;	/* reset */
		for (i = 0; i < to->to_nsacks; i++) {
			FUNC11((to->to_sacks + i * TCPOLEN_SACK),
			    &sack, sizeof(sack));
			sack.start = FUNC12(sack.start);
			sack.end = FUNC12(sack.end);
			if (FUNC3(sack.end, sack.start) &&
			    FUNC3(sack.start, tp->snd_una) &&
			    FUNC3(sack.start, th_ack) &&
			    FUNC5(sack.start, tp->snd_max) &&
			    FUNC3(sack.end, tp->snd_una) &&
			    FUNC4(sack.end, tp->snd_max)) {
				sack_blocks[num_sack_blks++] = sack;
				tp->sackhint.sacked_bytes +=
				    (sack.end-sack.start);
			}
		}
	}
	/*
	 * Return if SND.UNA is not advanced and no valid SACK block is
	 * received.
	 */
	if (num_sack_blks == 0)
		return (sack_changed);

	/*
	 * Sort the SACK blocks so we can update the scoreboard with just one
	 * pass. The overhead of sorting up to 4+1 elements is less than
	 * making up to 4+1 passes over the scoreboard.
	 */
	for (i = 0; i < num_sack_blks; i++) {
		for (j = i + 1; j < num_sack_blks; j++) {
			if (FUNC3(sack_blocks[i].end, sack_blocks[j].end)) {
				sack = sack_blocks[i];
				sack_blocks[i] = sack_blocks[j];
				sack_blocks[j] = sack;
			}
		}
	}
	if (FUNC8(&tp->snd_holes))
		/*
		 * Empty scoreboard. Need to initialize snd_fack (it may be
		 * uninitialized or have a bogus value). Scoreboard holes
		 * (from the sack blocks received) are created later below
		 * (in the logic that adds holes to the tail of the
		 * scoreboard).
		 */
		tp->snd_fack = FUNC6(tp->snd_una, th_ack);
	/*
	 * In the while-loop below, incoming SACK blocks (sack_blocks[]) and
	 * SACK holes (snd_holes) are traversed from their tails with just
	 * one pass in order to reduce the number of compares especially when
	 * the bandwidth-delay product is large.
	 *
	 * Note: Typically, in the first RTT of SACK recovery, the highest
	 * three or four SACK blocks with the same ack number are received.
	 * In the second RTT, if retransmitted data segments are not lost,
	 * the highest three or four SACK blocks with ack number advancing
	 * are received.
	 */
	sblkp = &sack_blocks[num_sack_blks - 1];	/* Last SACK block */
	tp->sackhint.last_sack_ack = sblkp->end;
	if (FUNC5(tp->snd_fack, sblkp->start)) {
		/*
		 * The highest SACK block is beyond fack.  Append new SACK
		 * hole at the tail.  If the second or later highest SACK
		 * blocks are also beyond the current fack, they will be
		 * inserted by way of hole splitting in the while-loop below.
		 */
		temp = FUNC13(tp, tp->snd_fack,sblkp->start,NULL);
		if (temp != NULL) {
			tp->snd_fack = sblkp->end;
			/* Go to the previous sack block. */
			sblkp--;
			sack_changed = 1;
		} else {
			/* 
			 * We failed to add a new hole based on the current 
			 * sack block.  Skip over all the sack blocks that 
			 * fall completely to the right of snd_fack and
			 * proceed to trim the scoreboard based on the
			 * remaining sack blocks.  This also trims the
			 * scoreboard for th_ack (which is sack_blocks[0]).
			 */
			while (sblkp >= sack_blocks && 
			       FUNC5(tp->snd_fack, sblkp->start))
				sblkp--;
			if (sblkp >= sack_blocks && 
			    FUNC5(tp->snd_fack, sblkp->end))
				tp->snd_fack = sblkp->end;
		}
	} else if (FUNC5(tp->snd_fack, sblkp->end)) {
		/* fack is advanced. */
		tp->snd_fack = sblkp->end;
		sack_changed = 1;
	}
	cur = FUNC9(&tp->snd_holes, sackhole_head); /* Last SACK hole. */
	/*
	 * Since the incoming sack blocks are sorted, we can process them
	 * making one sweep of the scoreboard.
	 */
	while (sblkp >= sack_blocks  && cur != NULL) {
		if (FUNC2(sblkp->start, cur->end)) {
			/*
			 * SACKs data beyond the current hole.  Go to the
			 * previous sack block.
			 */
			sblkp--;
			continue;
		}
		if (FUNC4(sblkp->end, cur->start)) {
			/*
			 * SACKs data before the current hole.  Go to the
			 * previous hole.
			 */
			cur = FUNC10(cur, sackhole_head, scblink);
			continue;
		}
		tp->sackhint.sack_bytes_rexmit -= (cur->rxmit - cur->start);
		FUNC1(tp->sackhint.sack_bytes_rexmit >= 0,
		    ("sackhint bytes rtx >= 0"));
		sack_changed = 1;
		if (FUNC4(sblkp->start, cur->start)) {
			/* Data acks at least the beginning of hole. */
			if (FUNC2(sblkp->end, cur->end)) {
				/* Acks entire hole, so delete hole. */
				temp = cur;
				cur = FUNC10(cur, sackhole_head, scblink);
				FUNC14(tp, temp);
				/*
				 * The sack block may ack all or part of the
				 * next hole too, so continue onto the next
				 * hole.
				 */
				continue;
			} else {
				/* Move start of hole forward. */
				cur->start = sblkp->end;
				cur->rxmit = FUNC6(cur->rxmit, cur->start);
			}
		} else {
			/* Data acks at least the end of hole. */
			if (FUNC2(sblkp->end, cur->end)) {
				/* Move end of hole backward. */
				cur->end = sblkp->start;
				cur->rxmit = FUNC7(cur->rxmit, cur->end);
			} else {
				/*
				 * ACKs some data in middle of a hole; need
				 * to split current hole
				 */
				temp = FUNC13(tp, sblkp->end,
				    cur->end, cur);
				if (temp != NULL) {
					if (FUNC3(cur->rxmit, temp->rxmit)) {
						temp->rxmit = cur->rxmit;
						tp->sackhint.sack_bytes_rexmit
						    += (temp->rxmit
						    - temp->start);
					}
					cur->end = sblkp->start;
					cur->rxmit = FUNC7(cur->rxmit,
					    cur->end);
				}
			}
		}
		tp->sackhint.sack_bytes_rexmit += (cur->rxmit - cur->start);
		/*
		 * Testing sblkp->start against cur->start tells us whether
		 * we're done with the sack block or the sack hole.
		 * Accordingly, we advance one or the other.
		 */
		if (FUNC4(sblkp->start, cur->start))
			cur = FUNC10(cur, sackhole_head, scblink);
		else
			sblkp--;
	}
	return (sack_changed);
}