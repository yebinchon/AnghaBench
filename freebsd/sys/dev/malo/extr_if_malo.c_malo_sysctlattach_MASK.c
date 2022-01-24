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
struct sysctl_oid {int dummy; } ;
struct sysctl_ctx_list {int dummy; } ;
struct malo_softc {int /*<<< orphan*/  malo_debug; int /*<<< orphan*/  malo_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  CTLFLAG_RW ; 
 int /*<<< orphan*/  OID_AUTO ; 
 int /*<<< orphan*/  FUNC0 (struct sysctl_ctx_list*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct sysctl_oid*) ; 
 struct sysctl_ctx_list* FUNC2 (int /*<<< orphan*/ ) ; 
 struct sysctl_oid* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  malo_debug ; 

__attribute__((used)) static void
FUNC4(struct malo_softc *sc)
{
#ifdef	MALO_DEBUG
	struct sysctl_ctx_list *ctx = device_get_sysctl_ctx(sc->malo_dev);
	struct sysctl_oid *tree = device_get_sysctl_tree(sc->malo_dev);

	sc->malo_debug = malo_debug;
	SYSCTL_ADD_INT(ctx, SYSCTL_CHILDREN(tree), OID_AUTO,
		"debug", CTLFLAG_RW, &sc->malo_debug, 0,
		"control debugging printfs");
#endif
}