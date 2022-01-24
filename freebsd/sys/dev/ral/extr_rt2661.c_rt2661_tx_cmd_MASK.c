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
typedef  int uint16_t ;
struct rt2661_softc {int dummy; } ;

/* Variables and functions */
 int EIO ; 
 int FUNC0 (struct rt2661_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct rt2661_softc*,int /*<<< orphan*/ ,int) ; 
 int RT2661_H2M_BUSY ; 
 int /*<<< orphan*/  RT2661_H2M_MAILBOX_CSR ; 
 int /*<<< orphan*/  RT2661_HOST_CMD_CSR ; 
 int RT2661_KICK_CMD ; 
 int RT2661_TOKEN_NO_INTR ; 

__attribute__((used)) static int
FUNC2(struct rt2661_softc *sc, uint8_t cmd, uint16_t arg)
{
	if (FUNC0(sc, RT2661_H2M_MAILBOX_CSR) & RT2661_H2M_BUSY)
		return EIO;	/* there is already a command pending */

	FUNC1(sc, RT2661_H2M_MAILBOX_CSR,
	    RT2661_H2M_BUSY | RT2661_TOKEN_NO_INTR << 16 | arg);

	FUNC1(sc, RT2661_HOST_CMD_CSR, RT2661_KICK_CMD | cmd);

	return 0;
}