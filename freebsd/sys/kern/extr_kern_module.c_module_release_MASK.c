#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_2__* module_t ;
struct TYPE_7__ {scalar_t__ refs; TYPE_1__* file; } ;
struct TYPE_6__ {int /*<<< orphan*/  modules; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  MOD_XLOCK_ASSERT ; 
 int /*<<< orphan*/  M_MODULE ; 
 int /*<<< orphan*/  REFS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  flink ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  link ; 
 int /*<<< orphan*/  modules ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

void
FUNC4(module_t mod)
{

	MOD_XLOCK_ASSERT;

	if (mod->refs <= 0)
		FUNC3("module_release: bad reference count");

	FUNC0(REFS, ("module_release: before, refs=%d\n", mod->refs));
	
	mod->refs--;
	if (mod->refs == 0) {
		FUNC1(&modules, mod, link);
		if (mod->file)
			FUNC1(&mod->file->modules, mod, flink);
		FUNC2(mod, M_MODULE);
	}
}