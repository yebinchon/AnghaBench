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
typedef  int uint64_t ;
struct rtwn_softc {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct rtwn_softc*,int) ; 
 scalar_t__ FUNC1 (struct rtwn_softc*,int) ; 

__attribute__((used)) static void
FUNC2(struct rtwn_softc *sc, uint64_t *buf, int id)
{
	/* NB: we cannot read it at once. */
	*buf = FUNC0(sc, id);
	*buf <<= 32;
	*buf += FUNC1(sc, id);
}