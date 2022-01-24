#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* if_shared_ctx_t ;
typedef  int /*<<< orphan*/  if_ctx_t ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_4__ {scalar_t__ isc_magic; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ) ; 
 int ENOTSUP ; 
 scalar_t__ IFLIB_MAGIC ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

int
FUNC3(device_t dev)
{
	if_ctx_t ctx;
	if_shared_ctx_t sctx;

	if ((sctx = FUNC0(dev)) == NULL || sctx->isc_magic != IFLIB_MAGIC)
		return (ENOTSUP);

	FUNC2(dev);

	return (FUNC1(dev, NULL, sctx, &ctx));
}