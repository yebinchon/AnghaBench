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
typedef  int uint8_t ;
typedef  int uint32_t ;
typedef  int uint16_t ;
struct rt2860_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int EIO ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  FUNC2 (struct rt2860_softc*) ; 
 int FUNC3 (struct rt2860_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct rt2860_softc*,int /*<<< orphan*/ ,int) ; 
 int RT2860_H2M_BUSY ; 
 int /*<<< orphan*/  RT2860_H2M_MAILBOX ; 
 int /*<<< orphan*/  RT2860_H2M_MAILBOX_CID ; 
 int /*<<< orphan*/  RT2860_H2M_MAILBOX_STATUS ; 
 int /*<<< orphan*/  RT2860_HOST_CMD ; 
 int RT2860_TOKEN_NO_INTR ; 

int
FUNC5(struct rt2860_softc *sc, uint8_t cmd, uint16_t arg, int wait)
{
	int slot, ntries;
	uint32_t tmp;
	uint8_t cid;

	for (ntries = 0; ntries < 100; ntries++) {
		if (!(FUNC3(sc, RT2860_H2M_MAILBOX) & RT2860_H2M_BUSY))
			break;
		FUNC0(2);
	}
	if (ntries == 100)
		return EIO;

	cid = wait ? cmd : RT2860_TOKEN_NO_INTR;
	FUNC4(sc, RT2860_H2M_MAILBOX, RT2860_H2M_BUSY | cid << 16 | arg);
	FUNC2(sc);
	FUNC4(sc, RT2860_HOST_CMD, cmd);

	if (!wait)
		return 0;
	/* wait for the command to complete */
	for (ntries = 0; ntries < 200; ntries++) {
		tmp = FUNC3(sc, RT2860_H2M_MAILBOX_CID);
		/* find the command slot */
		for (slot = 0; slot < 4; slot++, tmp >>= 8)
			if ((tmp & 0xff) == cid)
				break;
		if (slot < 4)
			break;
		FUNC0(100);
	}
	if (ntries == 200) {
		/* clear command and status */
		FUNC4(sc, RT2860_H2M_MAILBOX_STATUS, 0xffffffff);
		FUNC4(sc, RT2860_H2M_MAILBOX_CID, 0xffffffff);
		return ETIMEDOUT;
	}
	/* get command status (1 means success) */
	tmp = FUNC3(sc, RT2860_H2M_MAILBOX_STATUS);
	tmp = (tmp >> (slot * 8)) & 0xff;
	FUNC1(("MCU command=0x%02x slot=%d status=0x%02x\n",
	    cmd, slot, tmp));
	/* clear command and status */
	FUNC4(sc, RT2860_H2M_MAILBOX_STATUS, 0xffffffff);
	FUNC4(sc, RT2860_H2M_MAILBOX_CID, 0xffffffff);
	return (tmp == 1) ? 0 : EIO;
}