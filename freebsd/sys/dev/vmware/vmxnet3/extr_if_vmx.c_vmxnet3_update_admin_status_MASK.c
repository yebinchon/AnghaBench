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
struct vmxnet3_softc {TYPE_1__* vmx_ds; } ;
typedef  int /*<<< orphan*/  if_ctx_t ;
struct TYPE_2__ {scalar_t__ event; } ;

/* Variables and functions */
 struct vmxnet3_softc* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct vmxnet3_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct vmxnet3_softc*) ; 

__attribute__((used)) static void
FUNC3(if_ctx_t ctx)
{
	struct vmxnet3_softc *sc;

	sc = FUNC0(ctx);
	if (sc->vmx_ds->event != 0)
		FUNC1(sc);

	FUNC2(sc);
}