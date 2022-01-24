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
struct uart_bas {int /*<<< orphan*/  rclk; } ;

/* Variables and functions */
 int CTRL_INTR_MASK ; 
 int /*<<< orphan*/  DEFAULT_RCLK ; 
 int /*<<< orphan*/  UART_CTRL ; 
 int /*<<< orphan*/  FUNC0 (struct uart_bas*) ; 
 int FUNC1 (struct uart_bas*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct uart_bas*,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct uart_bas*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC4(struct uart_bas *bas, int baudrate, int databits, int stopbits,
    int parity)
{
	/* Set default frequency */
	bas->rclk = DEFAULT_RCLK;

	/* Mask interrupts */
	FUNC3(bas, UART_CTRL, FUNC1(bas, UART_CTRL) &
	    ~CTRL_INTR_MASK);
	FUNC0(bas);

	FUNC2(bas, baudrate, databits, stopbits, parity);
}