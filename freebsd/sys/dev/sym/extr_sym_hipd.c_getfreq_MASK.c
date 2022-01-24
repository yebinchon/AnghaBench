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
typedef  int /*<<< orphan*/  hcb_p ;

/* Variables and functions */
 int GEN ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  nc_dien ; 
 int /*<<< orphan*/  nc_scntl3 ; 
 int /*<<< orphan*/  nc_sien ; 
 int /*<<< orphan*/  nc_sist ; 
 int /*<<< orphan*/  nc_stime1 ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int,unsigned int,unsigned int) ; 
 char* FUNC5 (int /*<<< orphan*/ ) ; 
 int sym_verbose ; 

__attribute__((used)) static unsigned FUNC6 (hcb_p np, int gen)
{
	unsigned int ms = 0;
	unsigned int f;

	/*
	 * Measure GEN timer delay in order
	 * to calculate SCSI clock frequency
	 *
	 * This code will never execute too
	 * many loop iterations (if DELAY is
	 * reasonably correct). It could get
	 * too low a delay (too high a freq.)
	 * if the CPU is slow executing the
	 * loop for some reason (an NMI, for
	 * example). For this reason we will
	 * if multiple measurements are to be
	 * performed trust the higher delay
	 * (lower frequency returned).
	 */
	FUNC2 (nc_sien , 0);	/* mask all scsi interrupts */
	(void) FUNC0 (nc_sist);	/* clear pending scsi interrupt */
	FUNC1 (nc_dien , 0);	/* mask all dma interrupts */
	(void) FUNC0 (nc_sist);	/* another one, just to be sure :) */
	FUNC1 (nc_scntl3, 4);	/* set pre-scaler to divide by 3 */
	FUNC1 (nc_stime1, 0);	/* disable general purpose timer */
	FUNC1 (nc_stime1, gen);	/* set to nominal delay of 1<<gen * 125us */
	while (!(FUNC0(nc_sist) & GEN) && ms++ < 100000)
		FUNC3 (1000);	/* count ms */
	FUNC1 (nc_stime1, 0);	/* disable general purpose timer */
 	/*
 	 * set prescaler to divide by whatever 0 means
 	 * 0 ought to choose divide by 2, but appears
 	 * to set divide by 3.5 mode in my 53c810 ...
 	 */
 	FUNC1 (nc_scntl3, 0);

  	/*
 	 * adjust for prescaler, and convert into KHz
  	 */
	f = ms ? ((1 << gen) * 4340) / ms : 0;

	if (sym_verbose >= 2)
		FUNC4 ("%s: Delay (GEN=%d): %u msec, %u KHz\n",
			FUNC5(np), gen, ms, f);

	return f;
}