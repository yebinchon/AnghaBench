#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
typedef  TYPE_1__* if_ctx_t ;
struct TYPE_5__ {int ifc_flags; } ;

/* Variables and functions */
 int IFC_IN_DETACH ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 

uint8_t
FUNC2(if_ctx_t ctx)
{
	bool in_detach;

	FUNC0(ctx);
	in_detach = !!(ctx->ifc_flags & IFC_IN_DETACH);
	FUNC1(ctx);
	return (in_detach);
}