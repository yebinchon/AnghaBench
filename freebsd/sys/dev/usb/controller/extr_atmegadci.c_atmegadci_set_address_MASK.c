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
struct atmegadci_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATMEGA_UDADDR ; 
 int /*<<< orphan*/  ATMEGA_UDADDR_ADDEN ; 
 int /*<<< orphan*/  FUNC0 (struct atmegadci_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(struct atmegadci_softc *sc, uint8_t addr)
{
	FUNC1(5, "addr=%d\n", addr);

	addr |= ATMEGA_UDADDR_ADDEN;

	FUNC0(sc, ATMEGA_UDADDR, addr);
}