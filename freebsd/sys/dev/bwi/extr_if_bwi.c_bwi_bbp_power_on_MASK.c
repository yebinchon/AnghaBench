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
struct bwi_softc {int dummy; } ;
typedef  enum bwi_clock_mode { ____Placeholder_bwi_clock_mode } bwi_clock_mode ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bwi_softc*,int) ; 
 int FUNC1 (struct bwi_softc*,int) ; 

__attribute__((used)) static int
FUNC2(struct bwi_softc *sc, enum bwi_clock_mode clk_mode)
{
	FUNC0(sc, 1);
	return FUNC1(sc, clk_mode);
}