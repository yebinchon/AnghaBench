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
struct musbotg_td {int channel; int transaction_started; int dev_addr; int haddr; int hport; int transfer_type; int error; int /*<<< orphan*/  pc; } ;
struct musbotg_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,int,...) ; 
 int MAX_NAK_TO ; 
 int MUSB2_MASK_CSR0H_PING_DIS ; 
 int MUSB2_MASK_CSR0L_ERROR ; 
 int MUSB2_MASK_CSR0L_RXSTALL ; 
 int MUSB2_MASK_CSR0L_STATUSPKT ; 
 int MUSB2_MASK_CSR0L_TXPKTRDY ; 
 int FUNC1 (struct musbotg_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MUSB2_REG_EPINDEX ; 
 int /*<<< orphan*/  MUSB2_REG_RXCSRH ; 
 int /*<<< orphan*/  MUSB2_REG_TXCSRL ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MUSB2_REG_TXNAKLIMIT ; 
 int /*<<< orphan*/  MUSB2_REG_TXTI ; 
 int /*<<< orphan*/  FUNC5 (struct musbotg_softc*,int /*<<< orphan*/ ,int) ; 
 struct musbotg_softc* FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (struct musbotg_softc*,struct musbotg_td*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct musbotg_softc*,struct musbotg_td*) ; 

__attribute__((used)) static uint8_t
FUNC9(struct musbotg_td *td)
{
	struct musbotg_softc *sc;
	uint8_t csr;

	/* get pointer to softc */
	sc = FUNC6(td->pc);

	if (td->channel == -1)
		td->channel = FUNC7(sc, td, 1);

	/* EP0 is busy, wait */
	if (td->channel == -1)
		return (1);

	FUNC0(1, "ep_no=%d/%d [%d@%d.%d/%02x]\n", td->channel, td->transaction_started, 
			td->dev_addr,td->haddr,td->hport, td->transfer_type);

	/* select endpoint 0 */
	FUNC5(sc, MUSB2_REG_EPINDEX, 0);

	csr = FUNC1(sc, MUSB2_REG_TXCSRL);
	FUNC0(4, "csr=0x%02x\n", csr);

	/* Not yet */
	if (csr & MUSB2_MASK_CSR0L_TXPKTRDY)
		return (1);

	/* Failed */
	if (csr & (MUSB2_MASK_CSR0L_RXSTALL |
	    MUSB2_MASK_CSR0L_ERROR))
	{
		/* Clear status bit */
		FUNC5(sc, MUSB2_REG_TXCSRL, 0);
		FUNC0(1, "error bit set, csr=0x%02x\n", csr);
		td->error = 1;
		FUNC8(sc, td);
		return (0); /* complete */
	}

	if (td->transaction_started) {
		FUNC8(sc, td);
		return (0); /* complete */
	} 

	FUNC5(sc, MUSB2_REG_RXCSRH, MUSB2_MASK_CSR0H_PING_DIS);

	FUNC5(sc, FUNC2(0), td->dev_addr);
	FUNC5(sc, FUNC3(0), td->haddr);
	FUNC5(sc, FUNC4(0), td->hport);
	FUNC5(sc, MUSB2_REG_TXTI, td->transfer_type);

	/* TX NAK timeout */
	FUNC5(sc, MUSB2_REG_TXNAKLIMIT, MAX_NAK_TO);

	td->transaction_started = 1;

	/* write command */
	FUNC5(sc, MUSB2_REG_TXCSRL,
	    MUSB2_MASK_CSR0L_STATUSPKT | 
	    MUSB2_MASK_CSR0L_TXPKTRDY);

	return (1);			/* wait for interrupt */
}