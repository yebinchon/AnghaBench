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
struct uart_bas {int dummy; } ;

/* Variables and functions */
 int IIR_IMASK ; 
 int IIR_MLSC ; 
 int IIR_NOPEND ; 
 int IIR_RLS ; 
 int IIR_RXRDY ; 
 int IIR_RXTOUT ; 
 int LSR_BI ; 
 int LSR_FE ; 
 int LSR_PE ; 
 int /*<<< orphan*/  REG_DATA ; 
 int /*<<< orphan*/  REG_IIR ; 
 int /*<<< orphan*/  REG_LSR ; 
 int /*<<< orphan*/  REG_MSR ; 
 int /*<<< orphan*/  FUNC0 (struct uart_bas*) ; 
 int FUNC1 (struct uart_bas*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(struct uart_bas *bas)
{
	uint8_t iir, lsr;

	iir = FUNC1(bas, REG_IIR);
	while ((iir & IIR_NOPEND) == 0) {
		iir &= IIR_IMASK;
		if (iir == IIR_RLS) {
			lsr = FUNC1(bas, REG_LSR);
			if (lsr & (LSR_BI|LSR_FE|LSR_PE))
				(void)FUNC1(bas, REG_DATA);
		} else if (iir == IIR_RXRDY || iir == IIR_RXTOUT)
			(void)FUNC1(bas, REG_DATA);
		else if (iir == IIR_MLSC)
			(void)FUNC1(bas, REG_MSR);
		FUNC0(bas);
		iir = FUNC1(bas, REG_IIR);
	}
}