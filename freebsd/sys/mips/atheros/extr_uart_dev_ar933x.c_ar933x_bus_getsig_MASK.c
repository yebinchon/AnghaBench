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
struct uart_softc {int sc_hwsig; } ;

/* Variables and functions */
 int /*<<< orphan*/  SER_CTS ; 
 int /*<<< orphan*/  SER_DCD ; 
 int /*<<< orphan*/  SER_DCTS ; 
 int /*<<< orphan*/  SER_DDCD ; 
 int /*<<< orphan*/  SER_DDSR ; 
 int /*<<< orphan*/  SER_DRI ; 
 int /*<<< orphan*/  SER_DSR ; 
 int SER_MASK_DELTA ; 
 int /*<<< orphan*/  SER_RI ; 
 int /*<<< orphan*/  FUNC0 (int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC1(struct uart_softc *sc)
{
	uint32_t sig = sc->sc_hwsig;

	/*
	 * For now, let's just return that DSR/DCD/CTS is asserted.
	 */
	FUNC0(1, sig, SER_DSR, SER_DDSR);
	FUNC0(1, sig, SER_CTS, SER_DCTS);
	FUNC0(1, sig, SER_DCD, SER_DDCD);
	FUNC0(1, sig,  SER_RI,  SER_DRI);

	sc->sc_hwsig = sig & ~SER_MASK_DELTA;

	return (sig);
}