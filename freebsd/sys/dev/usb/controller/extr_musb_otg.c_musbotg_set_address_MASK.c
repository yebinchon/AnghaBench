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
struct musbotg_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,int) ; 
 int /*<<< orphan*/  MUSB2_REG_FADDR ; 
 int /*<<< orphan*/  FUNC1 (struct musbotg_softc*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC2(struct musbotg_softc *sc, uint8_t addr)
{
	FUNC0(4, "addr=%d\n", addr);
	addr &= 0x7F;
	FUNC1(sc, MUSB2_REG_FADDR, addr);
}