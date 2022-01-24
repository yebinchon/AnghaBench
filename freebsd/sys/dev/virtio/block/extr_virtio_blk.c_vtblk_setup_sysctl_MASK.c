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
struct vtblk_softc {int /*<<< orphan*/  vtblk_dev; } ;
struct sysctl_oid_list {int dummy; } ;
struct sysctl_oid {int dummy; } ;
struct sysctl_ctx_list {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int CTLFLAG_RW ; 
 int CTLTYPE_INT ; 
 int /*<<< orphan*/  OID_AUTO ; 
 int /*<<< orphan*/  FUNC0 (struct sysctl_ctx_list*,struct sysctl_oid_list*,int /*<<< orphan*/ ,char*,int,struct vtblk_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*) ; 
 struct sysctl_oid_list* FUNC1 (struct sysctl_oid*) ; 
 struct sysctl_ctx_list* FUNC2 (int /*<<< orphan*/ ) ; 
 struct sysctl_oid* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  vtblk_write_cache_sysctl ; 

__attribute__((used)) static void
FUNC4(struct vtblk_softc *sc)
{
	device_t dev;
	struct sysctl_ctx_list *ctx;
	struct sysctl_oid *tree;
	struct sysctl_oid_list *child;

	dev = sc->vtblk_dev;
	ctx = FUNC2(dev);
	tree = FUNC3(dev);
	child = FUNC1(tree);

	FUNC0(ctx, child, OID_AUTO, "writecache_mode",
	    CTLTYPE_INT | CTLFLAG_RW, sc, 0, vtblk_write_cache_sysctl,
	    "I", "Write cache mode (writethrough (0) or writeback (1))");
}