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
struct uart_bas {int dummy; } ;
struct mtx {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  SAB_CMDR ; 
 int /*<<< orphan*/  SAB_CMDR_RFRD ; 
 int /*<<< orphan*/  SAB_CMDR_RMC ; 
 int /*<<< orphan*/  SAB_ISR0 ; 
 int SAB_ISR0_TCD ; 
 int /*<<< orphan*/  SAB_RFIFO ; 
 int /*<<< orphan*/  SAB_STAR ; 
 int SAB_STAR_CEC ; 
 int SAB_STAR_RFNE ; 
 int FUNC1 (struct uart_bas*) ; 
 int /*<<< orphan*/  FUNC2 (struct uart_bas*) ; 
 int FUNC3 (struct uart_bas*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct mtx*) ; 
 int /*<<< orphan*/  FUNC5 (struct uart_bas*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct mtx*) ; 

__attribute__((used)) static int
FUNC7(struct uart_bas *bas, struct mtx *hwmtx)
{
	int c, delay;

	FUNC4(hwmtx);

	/* 1/10th the time to transmit 1 character (estimate). */
	delay = FUNC1(bas);

	while (!(FUNC3(bas, SAB_STAR) & SAB_STAR_RFNE)) {
		FUNC6(hwmtx);
		FUNC0(delay);
		FUNC4(hwmtx);
	}

	while (FUNC3(bas, SAB_STAR) & SAB_STAR_CEC)
		;
	FUNC5(bas, SAB_CMDR, SAB_CMDR_RFRD);
	FUNC2(bas);

	while (!(FUNC3(bas, SAB_ISR0) & SAB_ISR0_TCD))
		FUNC0(delay);

	c = FUNC3(bas, SAB_RFIFO);
	FUNC2(bas);

	/* Blow away everything left in the FIFO... */
	while (FUNC3(bas, SAB_STAR) & SAB_STAR_CEC)
		;
	FUNC5(bas, SAB_CMDR, SAB_CMDR_RMC);
	FUNC2(bas);

	FUNC6(hwmtx);

	return (c);
}