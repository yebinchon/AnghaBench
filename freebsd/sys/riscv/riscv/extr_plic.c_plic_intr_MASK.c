#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
struct trapframe {int dummy; } ;
struct plic_softc {int dummy; } ;
struct TYPE_2__ {struct trapframe* td_intr_frame; } ;

/* Variables and functions */
 int FILTER_HANDLED ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct plic_softc*,scalar_t__) ; 
 scalar_t__ FUNC2 (struct plic_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct plic_softc*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  cpuid ; 
 TYPE_1__* curthread ; 
 int /*<<< orphan*/  FUNC4 (struct plic_softc*,scalar_t__,struct trapframe*) ; 

__attribute__((used)) static int
FUNC5(void *arg)
{
	struct plic_softc *sc;
	struct trapframe *tf;
	uint32_t pending;
	uint32_t cpu;

	sc = arg;
	cpu = FUNC0(cpuid);

	pending = FUNC2(sc, FUNC1(sc, cpu));
	if (pending) {
		tf = curthread->td_intr_frame;
		FUNC4(sc, pending, tf);
		FUNC3(sc, FUNC1(sc, cpu), pending);
	}

	return (FILTER_HANDLED);
}