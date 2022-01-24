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
typedef  int /*<<< orphan*/  module_t ;
struct TYPE_6__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  actv; int /*<<< orphan*/  done; } ;

/* Variables and functions */
 int EBUSY ; 
 int EOPNOTSUPP ; 
#define  MOD_LOAD 129 
#define  MOD_UNLOAD 128 
 int /*<<< orphan*/  MTX_DEF ; 
 int /*<<< orphan*/  M_DEVBUF ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC2 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 TYPE_1__* vhba ; 
 int FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 

int
FUNC9(module_t mod, int cmd, void *arg)
{
	int error = 0;

	switch (cmd) {
	case MOD_LOAD:
		vhba = FUNC2(sizeof (*vhba), M_DEVBUF, M_WAITOK|M_ZERO);
		FUNC4(&vhba->lock, "vhba", NULL, MTX_DEF);
		error = FUNC7(vhba);
		if (error) {
			FUNC3(&vhba->lock);
			FUNC1(vhba, M_DEVBUF);
		}
		break;
	case MOD_UNLOAD:
        	FUNC5(&vhba->lock);
		if (FUNC0(&vhba->done) || FUNC0(&vhba->actv)) {
			error = EBUSY;
			FUNC6(&vhba->lock);
			break;
		}
		FUNC8(vhba);
		FUNC6(&vhba->lock);
		FUNC3(&vhba->lock);
		FUNC1(vhba, M_DEVBUF);
		break;
	default:
		error = EOPNOTSUPP;
		break;
	}
	return (error);
}