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
struct TYPE_2__ {int /*<<< orphan*/  et_arg; int /*<<< orphan*/  (* et_event_cb ) (TYPE_1__*,int /*<<< orphan*/ ) ;scalar_t__ et_active; } ;
struct xentimer_softc {TYPE_1__ et; } ;
struct xentimer_pcpu_data {scalar_t__ timer; int /*<<< orphan*/  last_processed; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct xentimer_pcpu_data* FUNC1 (int /*<<< orphan*/ ) ; 
 int FILTER_HANDLED ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  vcpu_info ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  xentimer_pcpu ; 

__attribute__((used)) static int
FUNC4(void *arg)
{
	struct xentimer_softc *sc = (struct xentimer_softc *)arg;
	struct xentimer_pcpu_data *pcpu = FUNC1(xentimer_pcpu);

	pcpu->last_processed = FUNC3(FUNC0(vcpu_info));
	if (pcpu->timer != 0 && sc->et.et_active)
		sc->et.et_event_cb(&sc->et, sc->et.et_arg);

	return (FILTER_HANDLED);
}