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
typedef  long uint64_t ;
struct riscv_timer_softc {int dummy; } ;

/* Variables and functions */
 long FUNC0 () ; 

__attribute__((used)) static long
FUNC1(struct riscv_timer_softc *sc)
{
	uint64_t counts;

	counts = FUNC0();

	return (counts);
}