#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  kobj_t ;
typedef  int /*<<< orphan*/  if_t ;
typedef  TYPE_1__* if_ctx_t ;
struct TYPE_6__ {int /*<<< orphan*/  ifc_media; int /*<<< orphan*/  ifc_ifp; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC6(if_ctx_t ctx)
{
	if_t ifp = ctx->ifc_ifp;

	/* Remove all media */
	FUNC4(&ctx->ifc_media);

	/* Ensure that VLAN event handlers are unregistered */
	FUNC3(ctx);

	/* Release kobject reference */
	FUNC5((kobj_t) ctx, NULL);

	/* Free the ifnet structure */
	FUNC2(ifp);

	FUNC1(ctx);

	/* ether_ifdetach calls if_qflush - lock must be destroy afterwards*/
	FUNC0(ctx);
}