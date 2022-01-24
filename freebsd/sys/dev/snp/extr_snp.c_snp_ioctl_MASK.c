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
typedef  int uint32_t ;
typedef  int u_long ;
struct tty {int dummy; } ;
struct thread {int /*<<< orphan*/  td_proc; } ;
struct snp_softc {int /*<<< orphan*/  snp_outq; struct tty* snp_tty; } ;
struct cdev {int dummy; } ;
typedef  void* dev_t ;
typedef  scalar_t__ caddr_t ;

/* Variables and functions */
 int EBUSY ; 
 int ENOTTY ; 
#define  FIONREAD 131 
 void* NODEV ; 
#define  SNPGTTY 130 
#define  SNPGTYY_32DEV 129 
#define  SNPSTTY 128 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  SNP_OUTPUT_BUFSIZE ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 (void**) ; 
 int /*<<< orphan*/  snp_hook ; 
 int /*<<< orphan*/  FUNC3 (struct tty*) ; 
 void* FUNC4 (struct tty*) ; 
 int /*<<< orphan*/  FUNC5 (struct tty*) ; 
 int FUNC6 (struct tty**,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,struct snp_softc*) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,struct tty*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC9(struct cdev *dev, u_long cmd, caddr_t data, int flags,
    struct thread *td)
{
	struct snp_softc *ss;
	struct tty *tp;
	int error;

	error = FUNC2((void **)&ss);
	if (error != 0)
		return (error);

	switch (cmd) {
	case SNPSTTY:
		/* Bind TTY to snoop instance. */
		FUNC0();
		if (ss->snp_tty != NULL) {
			FUNC1();
			return (EBUSY);
		}
		/*
		 * XXXRW / XXXJA: no capability check here.
		 */
		error = FUNC6(&ss->snp_tty, td->td_proc,
		    *(int *)data, &snp_hook, ss);
		FUNC1();
		if (error != 0)
			return (error);

		/* Now that went okay, allocate a buffer for the queue. */
		tp = ss->snp_tty;
		FUNC3(tp);
		FUNC8(&ss->snp_outq, tp, SNP_OUTPUT_BUFSIZE);
		FUNC5(tp);

		return (0);
	case SNPGTTY:
		/* Obtain device number of associated TTY. */
		if (ss->snp_tty == NULL)
			*(dev_t *)data = NODEV;
		else
			*(dev_t *)data = FUNC4(ss->snp_tty);
		return (0);
	case SNPGTYY_32DEV:
		if (ss->snp_tty == NULL)
			*(uint32_t *)data = -1;
		else
			*(uint32_t *)data = FUNC4(ss->snp_tty); /* trunc */
		return (0);
	case FIONREAD:
		tp = ss->snp_tty;
		if (tp != NULL) {
			FUNC3(tp);
			*(int *)data = FUNC7(&ss->snp_outq);
			FUNC5(tp);
		} else {
			*(int *)data = 0;
		}
		return (0);
	default:
		return (ENOTTY);
	}
}