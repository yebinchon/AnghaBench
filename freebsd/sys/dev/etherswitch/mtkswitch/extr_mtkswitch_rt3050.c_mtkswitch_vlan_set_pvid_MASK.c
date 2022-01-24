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
typedef  int uint32_t ;
struct mtkswitch_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MA_OWNED ; 
 int /*<<< orphan*/  FUNC0 (struct mtkswitch_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (struct mtkswitch_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mtkswitch_softc*,int /*<<< orphan*/ ,int) ; 
 int PVID_MASK ; 
 int FUNC4 (int) ; 

__attribute__((used)) static int
FUNC5(struct mtkswitch_softc *sc, int port, int pvid)
{
	uint32_t val;

	FUNC0(sc, MA_OWNED);
	val = FUNC2(sc, FUNC1(port));
	val &= ~(PVID_MASK << FUNC4(port));
	val |= (pvid & PVID_MASK) << FUNC4(port);
	FUNC3(sc, FUNC1(port), val);
	
	return (0);
}