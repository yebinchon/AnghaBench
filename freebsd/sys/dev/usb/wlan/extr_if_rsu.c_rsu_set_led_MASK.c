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
struct rsu_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  R92S_LEDCFG ; 
 int FUNC0 (struct rsu_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct rsu_softc*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC2(struct rsu_softc *sc, int on)
{
	FUNC1(sc, R92S_LEDCFG,
	    (FUNC0(sc, R92S_LEDCFG) & 0xf0) | (!on << 3));
}