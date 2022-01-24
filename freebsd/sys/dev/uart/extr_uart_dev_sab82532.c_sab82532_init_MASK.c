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
struct uart_bas {scalar_t__ rclk; int chan; } ;

/* Variables and functions */
 scalar_t__ DEFAULT_RCLK ; 
 int /*<<< orphan*/  SAB_CCR0 ; 
 int SAB_CCR0_MCE ; 
 int SAB_CCR0_PU ; 
 int SAB_CCR0_SC_NRZ ; 
 int SAB_CCR0_SM_ASYNC ; 
 int /*<<< orphan*/  SAB_CCR1 ; 
 int SAB_CCR1_BCR ; 
 int SAB_CCR1_CM_7 ; 
 int SAB_CCR1_ODS ; 
 int /*<<< orphan*/  SAB_CCR2 ; 
 int SAB_CCR2_BDF ; 
 int SAB_CCR2_SSEL ; 
 int SAB_CCR2_TOE ; 
 int /*<<< orphan*/  SAB_CCR3 ; 
 int /*<<< orphan*/  SAB_CCR4 ; 
 int SAB_CCR4_EBRG ; 
 int SAB_CCR4_ICD ; 
 int SAB_CCR4_MCK4 ; 
 int /*<<< orphan*/  SAB_IMR0 ; 
 scalar_t__ SAB_IMR0_TCD ; 
 int /*<<< orphan*/  SAB_IMR1 ; 
 int /*<<< orphan*/  SAB_IPC ; 
 int SAB_IPC_ICPL ; 
 int /*<<< orphan*/  SAB_ISR0 ; 
 int /*<<< orphan*/  SAB_ISR1 ; 
 int /*<<< orphan*/  SAB_MODE ; 
 int SAB_MODE_FCTS ; 
 int SAB_MODE_RAC ; 
 int SAB_MODE_RTS ; 
 int /*<<< orphan*/  SAB_PCR ; 
 int /*<<< orphan*/  SAB_PIM ; 
 int /*<<< orphan*/  SAB_PVR ; 
 int SAB_PVR_DTR_A ; 
 int SAB_PVR_DTR_B ; 
 int SAB_PVR_MAGIC ; 
 int /*<<< orphan*/  SAB_RFC ; 
 int SAB_RFC_DPS ; 
 int SAB_RFC_RFDF ; 
 int SAB_RFC_RFTH_32CHAR ; 
 int UART_FLUSH_RECEIVER ; 
 int UART_FLUSH_TRANSMITTER ; 
 int /*<<< orphan*/  FUNC0 (struct uart_bas*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct uart_bas*,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct uart_bas*) ; 
 int FUNC3 (struct uart_bas*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct uart_bas*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC5(struct uart_bas *bas, int baudrate, int databits, int stopbits,
    int parity)
{
	uint8_t ccr0, pvr;

	if (bas->rclk == 0)
		bas->rclk = DEFAULT_RCLK;

	/*
	 * Set all pins, except the DTR pins (pin 1 and 2) to be inputs.
	 * Pin 4 is magical, meaning that I don't know what it does, but
	 * it too has to be set to output.
	 */
	FUNC4(bas, SAB_PCR,
	    ~(SAB_PVR_DTR_A|SAB_PVR_DTR_B|SAB_PVR_MAGIC));
	FUNC2(bas);
	/* Disable port interrupts. */
	FUNC4(bas, SAB_PIM, 0xff);
	FUNC2(bas);
	/* Interrupts are active low. */
	FUNC4(bas, SAB_IPC, SAB_IPC_ICPL);
	FUNC2(bas);
	/* Set DTR. */
	pvr = FUNC3(bas, SAB_PVR);
	switch (bas->chan) {
	case 1:
		pvr &= ~SAB_PVR_DTR_A;
		break;
	case 2:
		pvr &= ~SAB_PVR_DTR_B;
		break;
	}
	FUNC4(bas, SAB_PVR, pvr | SAB_PVR_MAGIC);
	FUNC2(bas);

	/* power down */
	FUNC4(bas, SAB_CCR0, 0);
	FUNC2(bas);

	/* set basic configuration */
	ccr0 = SAB_CCR0_MCE|SAB_CCR0_SC_NRZ|SAB_CCR0_SM_ASYNC;
	FUNC4(bas, SAB_CCR0, ccr0);
	FUNC2(bas);
	FUNC4(bas, SAB_CCR1, SAB_CCR1_ODS|SAB_CCR1_BCR|SAB_CCR1_CM_7);
	FUNC2(bas);
	FUNC4(bas, SAB_CCR2, SAB_CCR2_BDF|SAB_CCR2_SSEL|SAB_CCR2_TOE);
	FUNC2(bas);
	FUNC4(bas, SAB_CCR3, 0);
	FUNC2(bas);
	FUNC4(bas, SAB_CCR4, SAB_CCR4_MCK4|SAB_CCR4_EBRG|SAB_CCR4_ICD);
	FUNC2(bas);
	FUNC4(bas, SAB_MODE, SAB_MODE_FCTS|SAB_MODE_RTS|SAB_MODE_RAC);
	FUNC2(bas);
	FUNC4(bas, SAB_RFC, SAB_RFC_DPS|SAB_RFC_RFDF|
	    SAB_RFC_RFTH_32CHAR);
	FUNC2(bas);

	FUNC1(bas, baudrate, databits, stopbits, parity);

	/* Clear interrupts. */
	FUNC4(bas, SAB_IMR0, (unsigned char)~SAB_IMR0_TCD);
	FUNC4(bas, SAB_IMR1, 0xff);
	FUNC2(bas);
	FUNC3(bas, SAB_ISR0);
	FUNC3(bas, SAB_ISR1);
	FUNC2(bas);

	FUNC0(bas, UART_FLUSH_TRANSMITTER|UART_FLUSH_RECEIVER);

	/* Power up. */
	FUNC4(bas, SAB_CCR0, ccr0|SAB_CCR0_PU);
	FUNC2(bas);
}