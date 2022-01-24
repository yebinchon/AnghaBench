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
struct vtnet_softc {int /*<<< orphan*/  vtnet_act_vq_pairs; int /*<<< orphan*/  vtnet_requested_vq_pairs; int /*<<< orphan*/  vtnet_max_vq_pairs; int /*<<< orphan*/  vtnet_dev; } ;
struct sysctl_oid_list {int dummy; } ;
struct sysctl_oid {int dummy; } ;
struct sysctl_ctx_list {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  CTLFLAG_RD ; 
 int /*<<< orphan*/  OID_AUTO ; 
 int /*<<< orphan*/  FUNC0 (struct sysctl_ctx_list*,struct sysctl_oid_list*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 struct sysctl_oid_list* FUNC1 (struct sysctl_oid*) ; 
 struct sysctl_ctx_list* FUNC2 (int /*<<< orphan*/ ) ; 
 struct sysctl_oid* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sysctl_ctx_list*,struct sysctl_oid_list*,struct vtnet_softc*) ; 

__attribute__((used)) static void
FUNC5(struct vtnet_softc *sc)
{
	device_t dev;
	struct sysctl_ctx_list *ctx;
	struct sysctl_oid *tree;
	struct sysctl_oid_list *child;

	dev = sc->vtnet_dev;
	ctx = FUNC2(dev);
	tree = FUNC3(dev);
	child = FUNC1(tree);

	FUNC0(ctx, child, OID_AUTO, "max_vq_pairs",
	    CTLFLAG_RD, &sc->vtnet_max_vq_pairs, 0,
	    "Maximum number of supported virtqueue pairs");
	FUNC0(ctx, child, OID_AUTO, "requested_vq_pairs",
	    CTLFLAG_RD, &sc->vtnet_requested_vq_pairs, 0,
	    "Requested number of virtqueue pairs");
	FUNC0(ctx, child, OID_AUTO, "act_vq_pairs",
	    CTLFLAG_RD, &sc->vtnet_act_vq_pairs, 0,
	    "Number of active virtqueue pairs");

	FUNC4(ctx, child, sc);
}