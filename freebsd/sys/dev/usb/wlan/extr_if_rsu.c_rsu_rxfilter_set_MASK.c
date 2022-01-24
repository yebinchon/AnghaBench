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
struct rsu_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  R92S_RCR ; 
 int FUNC0 (struct rsu_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct rsu_softc*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC2(struct rsu_softc *sc, uint32_t clear, uint32_t set)
{
	/* NB: firmware can touch this register too. */
	FUNC1(sc, R92S_RCR,
	   (FUNC0(sc, R92S_RCR) & ~clear) | set);
}