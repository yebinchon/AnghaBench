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
struct uart_bas {scalar_t__ rclk; scalar_t__ chan; } ;

/* Variables and functions */
 scalar_t__ DEFAULT_RCLK ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct uart_bas*,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct uart_bas*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC4(struct uart_bas *bas, int baudrate, int databits, int stopbits,
    int parity)
{

	if (bas->rclk == 0)
		bas->rclk = DEFAULT_RCLK;

	/*
	 * GSMR_L = 0x00028034
	 * GSMR_H = 0x00000020
	 */
	FUNC2(bas, baudrate, databits, stopbits, parity);

	FUNC3(bas, FUNC0(bas->chan - 1), ~0);
	FUNC3(bas, FUNC1(bas->chan - 1), 0x0027);
}