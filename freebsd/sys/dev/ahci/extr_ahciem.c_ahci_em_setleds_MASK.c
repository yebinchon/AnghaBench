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
struct ahci_enclosure {int** status; int /*<<< orphan*/  r_memc; int /*<<< orphan*/  r_memt; } ;
typedef  int int16_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int AHCI_EM_RST ; 
 int AHCI_EM_TM ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int SESCTL_RQSACT ; 
 int SESCTL_RQSFLT ; 
 int SESCTL_RQSID ; 
 int SESCTL_RQSRR ; 
 struct ahci_enclosure* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void
FUNC5(device_t dev, int c)
{
	struct ahci_enclosure *enc;
	int timeout;
	int16_t val;

	enc = FUNC3(dev);

	val = 0;
	if (enc->status[c][2] & SESCTL_RQSACT)		/* Activity */
		val |= (1 << 0);
	if (enc->status[c][1] & SESCTL_RQSRR)		/* Rebuild */
		val |= (1 << 6) | (1 << 3);
	else if (enc->status[c][2] & SESCTL_RQSID)	/* Identification */
		val |= (1 << 3);
	else if (enc->status[c][3] & SESCTL_RQSFLT)	/* Fault */
		val |= (1 << 6);

	timeout = 10000;
	while (FUNC0(enc->r_memc, 0) & (AHCI_EM_TM | AHCI_EM_RST) &&
	    --timeout > 0)
		FUNC2(100);
	if (timeout == 0)
		FUNC4(dev, "Transmit timeout\n");
	FUNC1(enc->r_memt, 0, (1 << 8) | (0 << 16) | (0 << 24));
	FUNC1(enc->r_memt, 4, c | (0 << 8) | (val << 16));
	FUNC1(enc->r_memc, 0, AHCI_EM_TM);
}