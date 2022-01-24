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
typedef  int /*<<< orphan*/  val ;
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint16_t ;
struct rtwn_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct rtwn_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 

int
FUNC2(struct rtwn_softc *sc, uint16_t addr, uint16_t val)
{
	val = FUNC0(val);
	return (FUNC1(sc, addr, (uint8_t *)&val, sizeof(val)));
}