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
struct vmctx {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  SCI_INT ; 
 scalar_t__ sci_active ; 
 int /*<<< orphan*/  FUNC0 (struct vmctx*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC1(struct vmctx *ctx)
{

	if (!sci_active)
		return;
	FUNC0(ctx, SCI_INT, SCI_INT);
	sci_active = 0;
}