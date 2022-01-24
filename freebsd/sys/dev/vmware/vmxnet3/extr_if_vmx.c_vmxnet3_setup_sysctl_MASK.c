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
struct vmxnet3_softc {int /*<<< orphan*/  vmx_dev; } ;
struct sysctl_oid_list {int dummy; } ;
struct sysctl_oid {int dummy; } ;
struct sysctl_ctx_list {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 struct sysctl_oid_list* FUNC0 (struct sysctl_oid*) ; 
 struct sysctl_ctx_list* FUNC1 (int /*<<< orphan*/ ) ; 
 struct sysctl_oid* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct vmxnet3_softc*,struct sysctl_ctx_list*,struct sysctl_oid_list*) ; 

__attribute__((used)) static void
FUNC4(struct vmxnet3_softc *sc)
{
	device_t dev;
	struct sysctl_ctx_list *ctx;
	struct sysctl_oid *tree;
	struct sysctl_oid_list *child;

	dev = sc->vmx_dev;
	ctx = FUNC1(dev);
	tree = FUNC2(dev);
	child = FUNC0(tree);

	FUNC3(sc, ctx, child);
}