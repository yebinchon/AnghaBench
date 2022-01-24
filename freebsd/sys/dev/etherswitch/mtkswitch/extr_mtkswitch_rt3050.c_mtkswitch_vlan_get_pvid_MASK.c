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
struct mtkswitch_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MA_OWNED ; 
 int /*<<< orphan*/  FUNC0 (struct mtkswitch_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (struct mtkswitch_softc*,int /*<<< orphan*/ ) ; 
 int PVID_MASK ; 
 int FUNC3 (int) ; 

__attribute__((used)) static int
FUNC4(struct mtkswitch_softc *sc, int port, int *pvid)
{

	FUNC0(sc, MA_OWNED);
	*pvid = (FUNC2(sc, FUNC1(port)) >> FUNC3(port)) &
	    PVID_MASK;

	return (0); 
}