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
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  uint16_t ;
typedef  int /*<<< orphan*/  ehci_softc_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int EHCI_PS_CLEAR ; 
 int EHCI_PS_PO ; 
 int FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int) ; 

__attribute__((used)) static void
FUNC4(ehci_softc_t *sc, uint16_t index, uint8_t lowspeed)
{
	uint32_t port;
	uint32_t v;

	FUNC0("index=%d lowspeed=%d\n", index, lowspeed);

	port = FUNC1(index);
	v = FUNC2(sc, port) & ~EHCI_PS_CLEAR;
	FUNC3(sc, port, v | EHCI_PS_PO);
}