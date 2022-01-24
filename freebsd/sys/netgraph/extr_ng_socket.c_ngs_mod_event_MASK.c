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
typedef  int /*<<< orphan*/  module_t ;

/* Variables and functions */
 int EBUSY ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
#define  MOD_LOAD 129 
#define  MOD_UNLOAD 128 
 int /*<<< orphan*/  MTX_DEF ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ngsocketlist_mtx ; 
 int /*<<< orphan*/  ngsocklist ; 

__attribute__((used)) static int
FUNC2(module_t mod, int event, void *data)
{
	int error = 0;

	switch (event) {
	case MOD_LOAD:
		FUNC1(&ngsocketlist_mtx, "ng_socketlist", NULL, MTX_DEF);
		break;
	case MOD_UNLOAD:
		/* Ensure there are no open netgraph sockets. */
		if (!FUNC0(&ngsocklist)) {
			error = EBUSY;
			break;
		}
#ifdef NOTYET
		/* Unregister protocol domain XXX can't do this yet.. */
#endif
		error = EBUSY;
		break;
	default:
		error = EOPNOTSUPP;
		break;
	}
	return (error);
}