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
struct rt2661_softc {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct rt2661_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct rt2661_softc*,int /*<<< orphan*/ ,int) ; 
 int RT2661_DISABLE_RX ; 
 int /*<<< orphan*/  RT2661_TXRX_CSR0 ; 
 int /*<<< orphan*/  FUNC2 (struct rt2661_softc*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct rt2661_softc*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(struct rt2661_softc *sc)
{
	uint8_t bbp4, bbp77;
	uint32_t tmp;

	bbp4  = FUNC2(sc,  4);
	bbp77 = FUNC2(sc, 77);

	/* TBD */

	/* make sure Rx is disabled before switching antenna */
	tmp = FUNC0(sc, RT2661_TXRX_CSR0);
	FUNC1(sc, RT2661_TXRX_CSR0, tmp | RT2661_DISABLE_RX);

	FUNC3(sc,  4, bbp4);
	FUNC3(sc, 77, bbp77);

	/* restore Rx filter */
	FUNC1(sc, RT2661_TXRX_CSR0, tmp);
}