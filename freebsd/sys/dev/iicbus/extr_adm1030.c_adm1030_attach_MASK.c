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
struct sysctl_oid {int dummy; } ;
struct sysctl_ctx_list {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  ich_arg; int /*<<< orphan*/  ich_func; } ;
struct adm1030_softc {TYPE_1__ enum_hook; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int CTLFLAG_MPSAFE ; 
 int CTLFLAG_RW ; 
 int CTLTYPE_INT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  OID_AUTO ; 
 int /*<<< orphan*/  FUNC0 (struct sysctl_ctx_list*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct sysctl_oid*) ; 
 int /*<<< orphan*/  adm1030_start ; 
 int /*<<< orphan*/  adm1030_sysctl ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 
 struct adm1030_softc* FUNC3 (int /*<<< orphan*/ ) ; 
 struct sysctl_ctx_list* FUNC4 (int /*<<< orphan*/ ) ; 
 struct sysctl_oid* FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(device_t dev)
{
	struct adm1030_softc *sc;
	struct sysctl_ctx_list *ctx;
	struct sysctl_oid *tree;

	sc = FUNC3(dev);

	sc->enum_hook.ich_func = adm1030_start;
	sc->enum_hook.ich_arg = dev;

	/*
	 * Wait until interrupts are available, which won't be until the openpic is
	 * intialized.
	 */

	if (FUNC2(&sc->enum_hook) != 0)
		return (ENOMEM);

	ctx = FUNC4(dev);
	tree = FUNC5(dev);
	FUNC0(ctx, FUNC1(tree), OID_AUTO, "pwm",
			CTLTYPE_INT | CTLFLAG_RW | CTLFLAG_MPSAFE, dev,
			0, adm1030_sysctl, "I", "Fan PWM Rate");

	return (0);
}