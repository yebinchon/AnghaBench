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
struct ppb_device {int /*<<< orphan*/  intr_arg; int /*<<< orphan*/  (* intr_hook ) (int /*<<< orphan*/ ) ;} ;
struct ppb_data {int /*<<< orphan*/ * ppb_owner; int /*<<< orphan*/  ppc_lock; } ;

/* Variables and functions */
 int ENOENT ; 
 int /*<<< orphan*/  MA_OWNED ; 
 struct ppb_device* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(void *arg)
{
	struct ppb_device *ppbdev;
	struct ppb_data *ppb = arg;

	FUNC1(ppb->ppc_lock, MA_OWNED);
	if (ppb->ppb_owner == NULL)
		return (ENOENT);

	ppbdev = FUNC0(ppb->ppb_owner);
	if (ppbdev->intr_hook == NULL)
		return (ENOENT);

	ppbdev->intr_hook(ppbdev->intr_arg);
	return (0);
}