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

/* Variables and functions */
 int IMSC_MASK_ALL ; 
 int /*<<< orphan*/  UART_IMSC ; 
 int FUNC0 (struct uart_bas*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct uart_bas*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct uart_bas*,int,int,int,int) ; 

__attribute__((used)) static void
FUNC3(struct uart_bas *bas, int baudrate, int databits, int stopbits,
    int parity)
{
	/* Mask all interrupts */
	FUNC1(bas, UART_IMSC, FUNC0(bas, UART_IMSC) &
	    ~IMSC_MASK_ALL);

	FUNC2(bas, baudrate, databits, stopbits, parity);
}