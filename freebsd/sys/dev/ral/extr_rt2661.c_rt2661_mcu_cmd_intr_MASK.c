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
 int /*<<< orphan*/  FUNC0 (struct rt2661_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct rt2661_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  RT2661_M2H_CMD_DONE_CSR ; 

__attribute__((used)) static void
FUNC2(struct rt2661_softc *sc)
{
	FUNC0(sc, RT2661_M2H_CMD_DONE_CSR);
	FUNC1(sc, RT2661_M2H_CMD_DONE_CSR, 0xffffffff);
}