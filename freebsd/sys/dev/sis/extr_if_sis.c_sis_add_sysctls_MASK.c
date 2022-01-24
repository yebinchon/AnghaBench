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
struct sysctl_oid_list {int dummy; } ;
struct sysctl_ctx_list {int dummy; } ;
struct sis_softc {scalar_t__ sis_manual_pad; int /*<<< orphan*/  sis_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  CTLFLAG_RWTUN ; 
 int /*<<< orphan*/  OID_AUTO ; 
 int /*<<< orphan*/  FUNC0 (struct sysctl_ctx_list*,struct sysctl_oid_list*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ ,char*) ; 
 struct sysctl_oid_list* FUNC1 (int /*<<< orphan*/ ) ; 
 struct sysctl_ctx_list* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(struct sis_softc *sc)
{
	struct sysctl_ctx_list *ctx;
	struct sysctl_oid_list *children;
	int unit;

	ctx = FUNC2(sc->sis_dev);
	children = FUNC1(FUNC3(sc->sis_dev));

	unit = FUNC4(sc->sis_dev);
	/*
	 * Unlike most other controllers, NS DP83815/DP83816 controllers
	 * seem to pad with 0xFF when it encounter short frames.  According
	 * to RFC 1042 the pad bytes should be 0x00.  Turning this tunable
	 * on will have driver pad manully but it's disabled by default
	 * because it will consume extra CPU cycles for short frames.
	 */
	sc->sis_manual_pad = 0;
	FUNC0(ctx, children, OID_AUTO, "manual_pad",
	    CTLFLAG_RWTUN, &sc->sis_manual_pad, 0, "Manually pad short frames");
}