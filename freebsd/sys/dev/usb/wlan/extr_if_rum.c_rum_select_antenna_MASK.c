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
struct rum_softc {int dummy; } ;

/* Variables and functions */
 int RT2573_DISABLE_RX ; 
 int /*<<< orphan*/  RT2573_TXRX_CSR0 ; 
 int /*<<< orphan*/  FUNC0 (struct rum_softc*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct rum_softc*,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct rum_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct rum_softc*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC4(struct rum_softc *sc)
{
	uint8_t bbp4, bbp77;
	uint32_t tmp;

	bbp4  = FUNC0(sc, 4);
	bbp77 = FUNC0(sc, 77);

	/* TBD */

	/* make sure Rx is disabled before switching antenna */
	tmp = FUNC2(sc, RT2573_TXRX_CSR0);
	FUNC3(sc, RT2573_TXRX_CSR0, tmp | RT2573_DISABLE_RX);

	FUNC1(sc,  4, bbp4);
	FUNC1(sc, 77, bbp77);

	FUNC3(sc, RT2573_TXRX_CSR0, tmp);
}