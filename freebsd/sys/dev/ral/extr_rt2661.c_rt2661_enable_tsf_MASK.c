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
struct rt2661_softc {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct rt2661_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct rt2661_softc*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int) ; 
 int RT2661_TSF_TICKING ; 
 int /*<<< orphan*/  RT2661_TXRX_CSR9 ; 

__attribute__((used)) static void
FUNC3(struct rt2661_softc *sc)
{
	FUNC1(sc, RT2661_TXRX_CSR9, 
	      (FUNC0(sc, RT2661_TXRX_CSR9) & 0xff000000)
	    | RT2661_TSF_TICKING | FUNC2(2));
}