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
 int /*<<< orphan*/  RT2573_TXRX_CSR9 ; 
 int /*<<< orphan*/  FUNC0 (struct rum_softc*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC1(struct rum_softc *sc)
{
	FUNC0(sc, RT2573_TXRX_CSR9, 0x00ffffff);
}