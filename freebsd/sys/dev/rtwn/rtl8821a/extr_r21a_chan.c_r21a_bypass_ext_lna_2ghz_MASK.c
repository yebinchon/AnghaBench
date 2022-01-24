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
struct rtwn_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct rtwn_softc*,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static void
FUNC3(struct rtwn_softc *sc)
{
	FUNC2(sc, FUNC0(0), 0x00100000, 0);
	FUNC2(sc, FUNC0(0), 0x00400000, 0);
	FUNC2(sc, FUNC1(0), 0, 0x07);
	FUNC2(sc, FUNC1(0), 0, 0x0700);
}