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
struct tty {struct com_s* t_sc; } ;
struct com_s {int fifo_image; int prev_modem_status; int last_modem_status; int /*<<< orphan*/  flags; int /*<<< orphan*/  int_ctl_port; int /*<<< orphan*/  modem_status_port; int /*<<< orphan*/  data_port; int /*<<< orphan*/  line_status_port; scalar_t__ hasfifo; int /*<<< orphan*/  loses_outints; int /*<<< orphan*/  poll_output; int /*<<< orphan*/  no_irq; int /*<<< orphan*/  poll; } ;
struct cdev {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int EIO ; 
 int FIFO_RCV_RST ; 
 int FIFO_XMT_RST ; 
 int IER_EMSC ; 
 int IER_ERLS ; 
 int IER_ERXRDY ; 
 int IER_ETXRDY ; 
 scalar_t__ FUNC2 (struct cdev*) ; 
 int LSR_RXRDY ; 
 int MSR_DCD ; 
 int /*<<< orphan*/  com_fifo ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  sio_lock ; 
 int /*<<< orphan*/  FUNC7 (struct com_s*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (struct tty*,int) ; 

__attribute__((used)) static int
FUNC10(struct tty *tp, struct cdev *dev)
{
	struct com_s	*com;
	int i;

	com = tp->t_sc;
	com->poll = com->no_irq;
	com->poll_output = com->loses_outints;
	if (com->hasfifo) {
		/*
		 * (Re)enable and drain fifos.
		 *
		 * Certain SMC chips cause problems if the fifos
		 * are enabled while input is ready.  Turn off the
		 * fifo if necessary to clear the input.  We test
		 * the input ready bit after enabling the fifos
		 * since we've already enabled them in comparam()
		 * and to handle races between enabling and fresh
		 * input.
		 */
		for (i = 0; i < 500; i++) {
			FUNC7(com, com_fifo,
				   FIFO_RCV_RST | FIFO_XMT_RST
				   | com->fifo_image);
			/*
			 * XXX the delays are for superstitious
			 * historical reasons.  It must be less than
			 * the character time at the maximum
			 * supported speed (87 usec at 115200 bps
			 * 8N1).  Otherwise we might loop endlessly
			 * if data is streaming in.  We used to use
			 * delays of 100.  That usually worked
			 * because DELAY(100) used to usually delay
			 * for about 85 usec instead of 100.
			 */
			FUNC1(50);
			if (!(FUNC3(com->line_status_port) & LSR_RXRDY))
				break;
			FUNC7(com, com_fifo, 0);
			FUNC1(50);
			(void) FUNC3(com->data_port);
		}
		if (i == 500)
			return (EIO);
	}

	FUNC4(&sio_lock);
	(void) FUNC3(com->line_status_port);
	(void) FUNC3(com->data_port);
	com->prev_modem_status = com->last_modem_status
	    = FUNC3(com->modem_status_port);
	FUNC6(com->int_ctl_port,
	     IER_ERXRDY | IER_ERLS | IER_EMSC
	     | (FUNC0(com->flags) ? 0 : IER_ETXRDY));
	FUNC5(&sio_lock);
	FUNC8();
	/* XXX: should be generic ? */
	if (com->prev_modem_status & MSR_DCD || FUNC2(dev))
		FUNC9(tp, 1);
	return (0);
}