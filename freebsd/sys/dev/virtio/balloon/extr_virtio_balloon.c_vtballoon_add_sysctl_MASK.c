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
typedef  int /*<<< orphan*/  uint32_t ;
struct vtballoon_softc {int /*<<< orphan*/  vtballoon_current_npages; int /*<<< orphan*/  vtballoon_desired_npages; int /*<<< orphan*/  vtballoon_dev; } ;
struct sysctl_oid_list {int dummy; } ;
struct sysctl_oid {int dummy; } ;
struct sysctl_ctx_list {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  CTLFLAG_RD ; 
 int /*<<< orphan*/  OID_AUTO ; 
 int /*<<< orphan*/  FUNC0 (struct sysctl_ctx_list*,struct sysctl_oid_list*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,char*) ; 
 struct sysctl_oid_list* FUNC1 (struct sysctl_oid*) ; 
 struct sysctl_ctx_list* FUNC2 (int /*<<< orphan*/ ) ; 
 struct sysctl_oid* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(struct vtballoon_softc *sc)
{
	device_t dev;
	struct sysctl_ctx_list *ctx;
	struct sysctl_oid *tree;
	struct sysctl_oid_list *child;

	dev = sc->vtballoon_dev;
	ctx = FUNC2(dev);
	tree = FUNC3(dev);
	child = FUNC1(tree);

	FUNC0(ctx, child, OID_AUTO, "desired",
	    CTLFLAG_RD, &sc->vtballoon_desired_npages, sizeof(uint32_t),
	    "Desired balloon size in pages");

	FUNC0(ctx, child, OID_AUTO, "current",
	    CTLFLAG_RD, &sc->vtballoon_current_npages, sizeof(uint32_t),
	    "Current balloon size in pages");
}