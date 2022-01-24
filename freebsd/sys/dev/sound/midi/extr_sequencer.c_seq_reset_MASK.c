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
struct seq_softc {int unit; int midi_number; int /*<<< orphan*/  seq_lock; int /*<<< orphan*/ * midis; int /*<<< orphan*/  out_q; int /*<<< orphan*/  in_q; int /*<<< orphan*/  reset_cv; int /*<<< orphan*/  out_cv; int /*<<< orphan*/  state_cv; scalar_t__ playing; } ;
typedef  int /*<<< orphan*/  kobj_t ;

/* Variables and functions */
 int /*<<< orphan*/  MA_OWNED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (char*,int) ; 

__attribute__((used)) static void
FUNC10(struct seq_softc *scp)
{
	int chn, i;
	kobj_t m;

	FUNC6(&scp->seq_lock, MA_OWNED);

	FUNC1(5, FUNC9("seq_reset: unit %d.\n", scp->unit));

	/*
	 * Stop reading and writing.
	 */

	/* scp->recording = 0; */
	scp->playing = 0;
	FUNC5(&scp->state_cv);
	FUNC5(&scp->out_cv);
	FUNC5(&scp->reset_cv);

	/*
	 * For now, don't reset the timers.
	 */
	FUNC0(scp->in_q);
	FUNC0(scp->out_q);

	for (i = 0; i < scp->midi_number; i++) {
		m = scp->midis[i];
		FUNC8(&scp->seq_lock);
		FUNC4(m);
		for (chn = 0; chn < 16; chn++) {
			FUNC3(m, chn, 123, 0);
			FUNC3(m, chn, 121, 0);
			FUNC2(m, chn, 1 << 13);
		}
		FUNC7(&scp->seq_lock);
	}
}