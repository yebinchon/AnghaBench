#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  module_t ;
struct TYPE_4__ {int /*<<< orphan*/  magic; } ;
struct TYPE_3__ {TYPE_2__* buf; } ;

/* Variables and functions */
 int /*<<< orphan*/  DCONS_BUF_SIZE ; 
 int /*<<< orphan*/  DCONS_CON ; 
 int /*<<< orphan*/  DCONS_GDB ; 
 int EOPNOTSUPP ; 
#define  MOD_LOAD 130 
#define  MOD_SHUTDOWN 129 
#define  MOD_UNLOAD 128 
 int /*<<< orphan*/  M_DEVBUF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  dcons_callout ; 
 int /*<<< orphan*/  dcons_close_refs ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  dcons_consdev ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (int) ; 
 TYPE_1__ dg ; 
 int drv_init ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 

__attribute__((used)) static int
FUNC13(module_t mode, int type, void *data)
{
	int err = 0, ret;

	switch (type) {
	case MOD_LOAD:
		ret = FUNC9(1);
		if (ret != -1)
			FUNC5();
		if (ret == 0) {
			FUNC7(&dcons_consdev);
			FUNC6(&dcons_consdev);
			FUNC2(&dcons_consdev);
		}
		break;
	case MOD_UNLOAD:
		FUNC12("dcons: unload\n");
		if (drv_init == 1) {
			FUNC1(&dcons_callout);
			FUNC3(&dcons_consdev);
			FUNC8(DCONS_CON);
			FUNC8(DCONS_GDB);
			dg.buf->magic = 0;

			FUNC4(dg.buf, DCONS_BUF_SIZE, M_DEVBUF);
		}

		/* Wait for tty deferred free callbacks to complete. */
		while (FUNC0(&dcons_close_refs) > 0)
                        FUNC11("dcunld", FUNC10(50), FUNC10(10), 0);
		break;
	case MOD_SHUTDOWN:
#if 0		/* Keep connection after halt */
		dg.buf->magic = 0;
#endif
		break;
	default:
		err = EOPNOTSUPP;
		break;
	}
	return(err);
}