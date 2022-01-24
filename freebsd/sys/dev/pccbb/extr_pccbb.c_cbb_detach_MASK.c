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
struct cbb_softc {int flags; int /*<<< orphan*/  mtx; int /*<<< orphan*/  base_res; int /*<<< orphan*/  irq_res; int /*<<< orphan*/  event_thread; int /*<<< orphan*/  intrhand; int /*<<< orphan*/  dev; int /*<<< orphan*/ * exca; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  CARD_OFF ; 
 int /*<<< orphan*/  CBBR_SOCKBASE ; 
 int CBB_KTHREAD_DONE ; 
 int CBB_KTHREAD_RUNNING ; 
 int /*<<< orphan*/  CBB_SOCKET_EVENT ; 
 int /*<<< orphan*/  CBB_SOCKET_MASK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  EXCA_INTR ; 
 int /*<<< orphan*/  EXCA_INTR_RESET ; 
 int /*<<< orphan*/  M_TEMP ; 
 int /*<<< orphan*/  PWAIT ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct cbb_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ **,int*) ; 
 struct cbb_softc* FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (char*,int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 

int
FUNC17(device_t brdev)
{
	struct cbb_softc *sc = FUNC8(brdev);
	device_t *devlist;
	int tmp, tries, error, numdevs;

	/*
	 * Before we delete the children (which we have to do because
	 * attach doesn't check for children busses correctly), we have
	 * to detach the children.  Even if we didn't need to delete the
	 * children, we have to detach them.
	 */
	error = FUNC1(brdev);
	if (error != 0)
		return (error);

	/*
	 * Since the attach routine doesn't search for children before it
	 * attaches them to this device, we must delete them here in order
	 * for the kldload/unload case to work.  If we failed to do that, then
	 * we'd get duplicate devices when cbb.ko was reloaded.
	 */
	tries = 10;
	do {
		error = FUNC7(brdev, &devlist, &numdevs);
		if (error == 0)
			break;
		/*
		 * Try hard to cope with low memory.
		 */
		if (error == ENOMEM) {
			FUNC15("cbbnomem", 1);
			continue;
		}
	} while (tries-- > 0);
	for (tmp = 0; tmp < numdevs; tmp++)
		FUNC6(brdev, devlist[tmp]);
	FUNC10(devlist, M_TEMP);

	/* Turn off the interrupts */
	FUNC5(sc, CBB_SOCKET_MASK, 0);

	/* reset 16-bit pcmcia bus */
	FUNC9(&sc->exca[0], EXCA_INTR, EXCA_INTR_RESET);

	/* turn off power */
	FUNC4(brdev, CARD_OFF);

	/* Ack the interrupt */
	FUNC5(sc, CBB_SOCKET_EVENT, 0xffffffff);

	/*
	 * Wait for the thread to die.  kproc_exit will do a wakeup
	 * on the event thread's struct proc * so that we know it is
	 * safe to proceed.  IF the thread is running, set the please
	 * die flag and wait for it to comply.  Since the wakeup on
	 * the event thread happens only in kproc_exit, we don't
	 * need to loop here.
	 */
	FUNC3(brdev, sc->irq_res, sc->intrhand);
	FUNC13(&sc->mtx);
	sc->flags |= CBB_KTHREAD_DONE;
	while (sc->flags & CBB_KTHREAD_RUNNING) {
		FUNC0((sc->dev, "Waiting for thread to die\n"));
		FUNC16(&sc->intrhand);
		FUNC11(sc->event_thread, &sc->mtx, PWAIT, "cbbun", 0);
	}
	FUNC14(&sc->mtx);

	FUNC2(brdev, SYS_RES_IRQ, 0, sc->irq_res);
	FUNC2(brdev, SYS_RES_MEMORY, CBBR_SOCKBASE,
	    sc->base_res);
	FUNC12(&sc->mtx);
	return (0);
}