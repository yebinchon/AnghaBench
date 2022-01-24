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
struct thread {int dummy; } ;
struct seq_softc {int unit; scalar_t__ busy; int midi_number; int /*<<< orphan*/  seq_lock; int /*<<< orphan*/  mapper_cookie; int /*<<< orphan*/  mapper; scalar_t__* midis; } ;
struct cdev {struct seq_softc* si_drv1; } ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct seq_softc*) ; 
 int /*<<< orphan*/  FUNC7 (struct seq_softc*) ; 
 int /*<<< orphan*/  FUNC8 (struct seq_softc*) ; 

int
FUNC9(struct cdev *i_dev, int flags, int mode, struct thread *td)
{
	int i;
	struct seq_softc *scp = i_dev->si_drv1;
	int ret;

	if (scp == NULL)
		return ENXIO;

	FUNC0(2, FUNC5("seq_close: unit %d.\n", scp->unit));

	FUNC3(&scp->seq_lock);

	ret = ENXIO;
	if (scp->busy == 0)
		goto err;

	FUNC6(scp);
	FUNC7(scp);

	for (i = 0; i < scp->midi_number; i++)
		if (scp->midis[i])
			FUNC1(scp->midis[i]);

	FUNC2(scp->mapper, scp->mapper_cookie);

	FUNC8(scp);

	scp->busy = 0;
	ret = 0;

err:
	FUNC0(3, FUNC5("seq_close: closed ret = %d.\n", ret));
	FUNC4(&scp->seq_lock);
	return ret;
}