#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct priv_fw {scalar_t__ refcnt; scalar_t__ file; int /*<<< orphan*/  flags; TYPE_1__* parent; } ;
struct firmware {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  refcnt; } ;

/* Variables and functions */
 int FIRMWARE_UNLOAD ; 
 int /*<<< orphan*/  FW_UNLOAD ; 
 struct priv_fw* FUNC0 (struct firmware const*) ; 
 int /*<<< orphan*/  firmware_mtx ; 
 int /*<<< orphan*/  firmware_tq ; 
 int /*<<< orphan*/  firmware_unload_task ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void
FUNC4(const struct firmware *p, int flags)
{
	struct priv_fw *fp = FUNC0(p);

	FUNC1(&firmware_mtx);
	fp->refcnt--;
	if (fp->refcnt == 0) {
		if (fp->parent != NULL)
			fp->parent->refcnt--;
		if (flags & FIRMWARE_UNLOAD)
			fp->flags |= FW_UNLOAD;
		if (fp->file)
			FUNC3(firmware_tq, &firmware_unload_task);
	}
	FUNC2(&firmware_mtx);
}