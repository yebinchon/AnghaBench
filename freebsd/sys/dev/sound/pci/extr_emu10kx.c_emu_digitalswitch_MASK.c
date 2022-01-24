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
struct emu_sc_info {int /*<<< orphan*/  root; int /*<<< orphan*/  ctx; } ;

/* Variables and functions */
 int CTLFLAG_RW ; 
 int CTLTYPE_INT ; 
 int /*<<< orphan*/  OID_AUTO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,struct emu_sc_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sysctl_emu_digitalswitch_control ; 

__attribute__((used)) static void
FUNC2(struct emu_sc_info *sc)
{
	/* XXX temporary? */
	FUNC0(sc->ctx,
		FUNC1(sc->root),
		OID_AUTO, "_digital",
		CTLTYPE_INT | CTLFLAG_RW, sc, 0,
		sysctl_emu_digitalswitch_control, "I", "Enable digital output");

	return;
}