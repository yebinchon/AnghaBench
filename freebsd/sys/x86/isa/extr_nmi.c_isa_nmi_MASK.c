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

/* Variables and functions */
 int ENMI_BUSTIMER ; 
 int ENMI_IOSTATUS ; 
 int ENMI_WATCHDOG ; 
 int /*<<< orphan*/  LOG_CRIT ; 
 int NMI_IOCHAN ; 
 int NMI_PARITY ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 

int
FUNC2(int cd)
{
	int retval = 0;
	int isa_port = FUNC0(0x61);
	int eisa_port = FUNC0(0x461);

	FUNC1(LOG_CRIT, "NMI ISA %x, EISA %x\n", isa_port, eisa_port);
	
	if (isa_port & NMI_PARITY) {
		FUNC1(LOG_CRIT, "RAM parity error, likely hardware failure.");
		retval = 1;
	}

	if (isa_port & NMI_IOCHAN) {
		FUNC1(LOG_CRIT, "I/O channel check, likely hardware failure.");
		retval = 1;
	}

	/*
	 * On a real EISA machine, this will never happen.  However it can
	 * happen on ISA machines which implement XT style floating point
	 * error handling (very rare).  Save them from a meaningless panic.
	 */
	if (eisa_port == 0xff)
		return(retval);

	if (eisa_port & ENMI_WATCHDOG) {
		FUNC1(LOG_CRIT, "EISA watchdog timer expired, likely hardware failure.");
		retval = 1;
	}

	if (eisa_port & ENMI_BUSTIMER) {
		FUNC1(LOG_CRIT, "EISA bus timeout, likely hardware failure.");
		retval = 1;
	}

	if (eisa_port & ENMI_IOSTATUS) {
		FUNC1(LOG_CRIT, "EISA I/O port status error.");
		retval = 1;
	}

	return(retval);
}