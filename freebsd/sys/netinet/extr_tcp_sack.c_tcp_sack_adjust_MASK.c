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
struct tcpcb {int /*<<< orphan*/  snd_fack; int /*<<< orphan*/  snd_nxt; int /*<<< orphan*/  t_inpcb; int /*<<< orphan*/  snd_holes; } ;
struct sackhole {int /*<<< orphan*/  end; int /*<<< orphan*/  start; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct sackhole* FUNC3 (int /*<<< orphan*/ *) ; 
 struct sackhole* FUNC4 (struct sackhole*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  scblink ; 

void
FUNC5(struct tcpcb *tp)
{
	struct sackhole *p, *cur = FUNC3(&tp->snd_holes);

	FUNC0(tp->t_inpcb);
	if (cur == NULL)
		return; /* No holes */
	if (FUNC1(tp->snd_nxt, tp->snd_fack))
		return; /* We're already beyond any SACKed blocks */
	/*-
	 * Two cases for which we want to advance snd_nxt:
	 * i) snd_nxt lies between end of one hole and beginning of another
	 * ii) snd_nxt lies between end of last hole and snd_fack
	 */
	while ((p = FUNC4(cur, scblink)) != NULL) {
		if (FUNC2(tp->snd_nxt, cur->end))
			return;
		if (FUNC1(tp->snd_nxt, p->start))
			cur = p;
		else {
			tp->snd_nxt = p->start;
			return;
		}
	}
	if (FUNC2(tp->snd_nxt, cur->end))
		return;
	tp->snd_nxt = tp->snd_fack;
}