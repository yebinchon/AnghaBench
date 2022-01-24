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
struct seq_softc {int unit; int playing; scalar_t__ waiting; int midi_number; int /*<<< orphan*/  seq_lock; int /*<<< orphan*/ * midis; int /*<<< orphan*/  reset_cv; int /*<<< orphan*/  out_cv; int /*<<< orphan*/  state_cv; int /*<<< orphan*/  out_q; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EINTR ; 
 int ERESTART ; 
 int EWOULDBLOCK ; 
 int /*<<< orphan*/  MA_OWNED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ) ; 
 int SEQ_SYNC_TIMEOUT ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int hz ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (char*,...) ; 

__attribute__((used)) static int
FUNC12(struct seq_softc *scp)
{
	int i, rl, sync[16], done;

	FUNC8(&scp->seq_lock, MA_OWNED);

	FUNC4(4, FUNC11("seq_sync: unit %d.\n", scp->unit));

	/*
	 * Wait until output queue is empty.  Check every so often to see if
	 * the queue is moving along.  If it isn't just abort.
	 */
	while (!FUNC2(scp->out_q)) {

		if (!scp->playing) {
			scp->playing = 1;
			FUNC6(&scp->state_cv);
			FUNC6(&scp->out_cv);
		}
		rl = FUNC3(scp->out_q);

		i = FUNC7(&scp->out_cv,
		    &scp->seq_lock, SEQ_SYNC_TIMEOUT * hz);

		if (i == EINTR || i == ERESTART) {
			if (i == EINTR) {
				/*
			         * XXX: I don't know why we stop playing
			         */
				scp->playing = 0;
				FUNC6(&scp->out_cv);
			}
			return i;
		}
		if (i == EWOULDBLOCK && rl == FUNC3(scp->out_q) &&
		    scp->waiting == 0) {
			/*
			 * A queue seems to be stuck up. Give up and clear
			 * queues.
			 */
			FUNC1(scp->out_q);
			scp->playing = 0;
			FUNC6(&scp->state_cv);
			FUNC6(&scp->out_cv);
			FUNC6(&scp->reset_cv);

			/*
			 * TODO: Consider if the raw devices need to be flushed
			 */

			FUNC4(1, FUNC11("seq_sync queue stuck, aborting\n"));

			return i;
		}
	}

	scp->playing = 0;
	/*
	 * Since syncing a midi device might block, unlock scp->seq_lock.
	 */

	FUNC10(&scp->seq_lock);
	for (i = 0; i < scp->midi_number; i++)
		sync[i] = 1;

	do {
		done = 1;
		for (i = 0; i < scp->midi_number; i++)
			if (sync[i]) {
				if (FUNC5(scp->midis[i]) == 0)
					sync[i] = 0;
				else
					done = 0;
			}
		if (!done)
			FUNC0(5000);

	} while (!done);

	FUNC9(&scp->seq_lock);
	return 0;
}