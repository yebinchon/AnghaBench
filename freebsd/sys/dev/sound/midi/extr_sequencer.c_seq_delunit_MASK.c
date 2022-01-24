#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {struct seq_softc* b; } ;
struct TYPE_3__ {struct seq_softc* b; } ;
struct seq_softc {int done; int /*<<< orphan*/  seq_lock; TYPE_2__ in_q; TYPE_1__ out_q; struct seq_softc* midi_flags; struct seq_softc* midis; int /*<<< orphan*/ * musicdev; int /*<<< orphan*/ * seqdev; int /*<<< orphan*/  th_cv; int /*<<< orphan*/  in_cv; int /*<<< orphan*/  out_cv; int /*<<< orphan*/  reset_cv; int /*<<< orphan*/  empty_cv; int /*<<< orphan*/  state_cv; scalar_t__ playing; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_DEVBUF ; 
 int /*<<< orphan*/  M_TEMP ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct seq_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int nseq ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  seqinfo_mtx ; 
 struct seq_softc** seqs ; 

__attribute__((used)) static int
FUNC10(int unit)
{
	struct seq_softc *scp = seqs[unit];
	int i;

	//SEQ_DEBUG(4, printf("seq_delunit: %d\n", unit));
	FUNC0(1, FUNC9("seq_delunit: 1 \n"));
	FUNC7(&scp->seq_lock);

	scp->playing = 0;
	scp->done = 1;
	FUNC1(&scp->out_cv);
	FUNC1(&scp->state_cv);
	FUNC1(&scp->reset_cv);
	FUNC0(1, FUNC9("seq_delunit: 2 \n"));
	FUNC3(&scp->th_cv, &scp->seq_lock);
	FUNC0(1, FUNC9("seq_delunit: 3.0 \n"));
	FUNC8(&scp->seq_lock);
	FUNC0(1, FUNC9("seq_delunit: 3.1 \n"));

	FUNC2(&scp->state_cv);
	FUNC0(1, FUNC9("seq_delunit: 4 \n"));
	FUNC2(&scp->empty_cv);
	FUNC0(1, FUNC9("seq_delunit: 5 \n"));
	FUNC2(&scp->reset_cv);
	FUNC0(1, FUNC9("seq_delunit: 6 \n"));
	FUNC2(&scp->out_cv);
	FUNC0(1, FUNC9("seq_delunit: 7 \n"));
	FUNC2(&scp->in_cv);
	FUNC0(1, FUNC9("seq_delunit: 8 \n"));
	FUNC2(&scp->th_cv);

	FUNC0(1, FUNC9("seq_delunit: 10 \n"));
	if (scp->seqdev)
		FUNC4(scp->seqdev);
	FUNC0(1, FUNC9("seq_delunit: 11 \n"));
	if (scp->musicdev)
		FUNC4(scp->musicdev);
	FUNC0(1, FUNC9("seq_delunit: 12 \n"));
	scp->seqdev = scp->musicdev = NULL;
	if (scp->midis != NULL)
		FUNC5(scp->midis, M_TEMP);
	FUNC0(1, FUNC9("seq_delunit: 13 \n"));
	if (scp->midi_flags != NULL)
		FUNC5(scp->midi_flags, M_TEMP);
	FUNC0(1, FUNC9("seq_delunit: 14 \n"));
	FUNC5(scp->out_q.b, M_TEMP);
	FUNC0(1, FUNC9("seq_delunit: 15 \n"));
	FUNC5(scp->in_q.b, M_TEMP);

	FUNC0(1, FUNC9("seq_delunit: 16 \n"));

	FUNC6(&scp->seq_lock);
	FUNC0(1, FUNC9("seq_delunit: 17 \n"));
	FUNC5(scp, M_DEVBUF);

	FUNC7(&seqinfo_mtx);
	for (i = unit; i < (nseq - 1); i++)
		seqs[i] = seqs[i + 1];
	nseq--;
	FUNC8(&seqinfo_mtx);

	return 0;
}