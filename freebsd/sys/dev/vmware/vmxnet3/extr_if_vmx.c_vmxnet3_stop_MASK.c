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
struct vmxnet3_softc {scalar_t__ vmx_link_active; } ;
typedef  int /*<<< orphan*/  if_ctx_t ;

/* Variables and functions */
 int /*<<< orphan*/  VMXNET3_CMD_DISABLE ; 
 int /*<<< orphan*/  VMXNET3_CMD_RESET ; 
 struct vmxnet3_softc* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct vmxnet3_softc*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(if_ctx_t ctx)
{
	struct vmxnet3_softc *sc;

	sc = FUNC0(ctx);

	sc->vmx_link_active = 0;
	FUNC1(sc, VMXNET3_CMD_DISABLE);
	FUNC1(sc, VMXNET3_CMD_RESET);
}