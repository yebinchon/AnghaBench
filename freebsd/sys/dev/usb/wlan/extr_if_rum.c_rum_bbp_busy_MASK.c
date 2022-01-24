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
struct rum_softc {int dummy; } ;

/* Variables and functions */
 int ETIMEDOUT ; 
 int RT2573_BBP_BUSY ; 
 int /*<<< orphan*/  RT2573_PHY_CSR3 ; 
 int hz ; 
 scalar_t__ FUNC0 (struct rum_softc*,int) ; 
 int FUNC1 (struct rum_softc*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC2(struct rum_softc *sc)
{
	int ntries;

	for (ntries = 0; ntries < 100; ntries++) {
		if (!(FUNC1(sc, RT2573_PHY_CSR3) & RT2573_BBP_BUSY))
			break;
		if (FUNC0(sc, hz / 100))
			break;
	}
	if (ntries == 100)
		return (ETIMEDOUT);

	return (0);
}