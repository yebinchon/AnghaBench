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
typedef  int /*<<< orphan*/  u_char ;
struct TYPE_4__ {struct seq_softc* b; } ;
struct seq_softc {int unit; TYPE_2__ in_q; TYPE_2__ out_q; struct seq_softc* midi_flags; struct seq_softc* midis; TYPE_1__* musicdev; TYPE_1__* seqdev; int /*<<< orphan*/ * mapper; int /*<<< orphan*/  mapper_cookie; int /*<<< orphan*/  th_cv; int /*<<< orphan*/  in_cv; int /*<<< orphan*/  out_cv; int /*<<< orphan*/  reset_cv; int /*<<< orphan*/  empty_cv; int /*<<< orphan*/  state_cv; int /*<<< orphan*/  seq_lock; scalar_t__ flags; } ;
typedef  int /*<<< orphan*/  kobj_t ;
struct TYPE_3__ {struct seq_softc* si_drv1; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int EV_SZ ; 
 int /*<<< orphan*/  GID_WHEEL ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  M_DEVBUF ; 
 int M_NOWAIT ; 
 int /*<<< orphan*/  M_TEMP ; 
 int M_ZERO ; 
 int /*<<< orphan*/  RFHIGHPID ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SND_DEV_MUSIC ; 
 int /*<<< orphan*/  SND_DEV_SEQ ; 
 int /*<<< orphan*/  UID_ROOT ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (struct seq_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ ,struct seq_softc*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 void* FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*,int) ; 
 void* FUNC9 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC10 (struct seq_softc*,int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  nseq ; 
 int /*<<< orphan*/  FUNC14 (char*,...) ; 
 int /*<<< orphan*/  seq_cdevsw ; 
 int /*<<< orphan*/  seq_eventthread ; 
 int /*<<< orphan*/  seqinfo_mtx ; 
 struct seq_softc** seqs ; 
 int /*<<< orphan*/  sequencer_class ; 

__attribute__((used)) static int
FUNC15(void)
{
	struct seq_softc *scp;
	int ret;
	u_char *buf;

	/* Allocate the softc. */
	ret = ENOMEM;
	scp = FUNC9(sizeof(*scp), M_DEVBUF, M_NOWAIT | M_ZERO);
	if (scp == NULL) {
		FUNC2(1, FUNC14("seq_addunit: softc allocation failed.\n"));
		goto err;
	}
	FUNC6((kobj_t)scp, &sequencer_class);

	buf = FUNC9(sizeof(*buf) * EV_SZ * 1024, M_TEMP, M_NOWAIT | M_ZERO);
	if (buf == NULL)
		goto err;
	FUNC1(scp->in_q, buf, EV_SZ * 1024);
	buf = FUNC9(sizeof(*buf) * EV_SZ * 1024, M_TEMP, M_NOWAIT | M_ZERO);
	if (buf == NULL)
		goto err;
	FUNC1(scp->out_q, buf, EV_SZ * 1024);
	ret = EINVAL;

	scp->midis = FUNC9(sizeof(kobj_t) * 32, M_TEMP, M_NOWAIT | M_ZERO);
	scp->midi_flags = FUNC9(sizeof(*scp->midi_flags) * 32, M_TEMP,
	    M_NOWAIT | M_ZERO);

	if (scp->midis == NULL || scp->midi_flags == NULL)
		goto err;

	scp->flags = 0;

	FUNC11(&scp->seq_lock, "seqflq", NULL, 0);
	FUNC3(&scp->state_cv, "seqstate");
	FUNC3(&scp->empty_cv, "seqempty");
	FUNC3(&scp->reset_cv, "seqtimer");
	FUNC3(&scp->out_cv, "seqqout");
	FUNC3(&scp->in_cv, "seqqin");
	FUNC3(&scp->th_cv, "seqstart");

	/*
	 * Init the damn timer
	 */

	scp->mapper = FUNC10(scp, &scp->unit, &scp->mapper_cookie);
	if (scp->mapper == NULL)
		goto err;

	scp->seqdev = FUNC8(&seq_cdevsw,
	    FUNC0(scp->unit, SND_DEV_SEQ, 0), UID_ROOT,
	    GID_WHEEL, 0666, "sequencer%d", scp->unit);

	scp->musicdev = FUNC8(&seq_cdevsw,
	    FUNC0(scp->unit, SND_DEV_MUSIC, 0), UID_ROOT,
	    GID_WHEEL, 0666, "music%d", scp->unit);

	if (scp->seqdev == NULL || scp->musicdev == NULL)
		goto err;
	/*
	 * TODO: Add to list of sequencers this module provides
	 */

	ret =
	    FUNC7
	    (seq_eventthread, scp, NULL, RFHIGHPID, 0,
	    "sequencer %02d", scp->unit);

	if (ret)
		goto err;

	scp->seqdev->si_drv1 = scp->musicdev->si_drv1 = scp;

	FUNC2(2, FUNC14("sequencer %d created scp %p\n", scp->unit, scp));

	ret = 0;

	FUNC12(&seqinfo_mtx);
	seqs[nseq++] = scp;
	FUNC13(&seqinfo_mtx);

	goto ok;

err:
	if (scp != NULL) {
		if (scp->seqdev != NULL)
			FUNC4(scp->seqdev);
		if (scp->musicdev != NULL)
			FUNC4(scp->musicdev);
		/*
	         * TODO: Destroy mutex and cv
	         */
		if (scp->midis != NULL)
			FUNC5(scp->midis, M_TEMP);
		if (scp->midi_flags != NULL)
			FUNC5(scp->midi_flags, M_TEMP);
		if (scp->out_q.b)
			FUNC5(scp->out_q.b, M_TEMP);
		if (scp->in_q.b)
			FUNC5(scp->in_q.b, M_TEMP);
		FUNC5(scp, M_DEVBUF);
	}
ok:
	return ret;
}