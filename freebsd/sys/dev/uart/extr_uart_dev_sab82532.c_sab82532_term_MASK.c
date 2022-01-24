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
typedef  int /*<<< orphan*/  uint8_t ;
struct uart_bas {int chan; } ;

/* Variables and functions */
 int /*<<< orphan*/  SAB_PVR ; 
 int /*<<< orphan*/  SAB_PVR_DTR_A ; 
 int /*<<< orphan*/  SAB_PVR_DTR_B ; 
 int /*<<< orphan*/  FUNC0 (struct uart_bas*) ; 
 int /*<<< orphan*/  FUNC1 (struct uart_bas*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct uart_bas*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(struct uart_bas *bas)
{
	uint8_t pvr;

	pvr = FUNC1(bas, SAB_PVR);
	switch (bas->chan) {
	case 1:
		pvr |= SAB_PVR_DTR_A;
		break;
	case 2:
		pvr |= SAB_PVR_DTR_B;
		break;
	}
	FUNC2(bas, SAB_PVR, pvr);
	FUNC0(bas);
}