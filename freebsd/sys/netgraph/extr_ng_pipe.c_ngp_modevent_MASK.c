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
struct ngp_hdr {int dummy; } ;
struct ngp_fifo {int dummy; } ;
typedef  int /*<<< orphan*/  module_t ;

/* Variables and functions */
 int EOPNOTSUPP ; 
#define  MOD_LOAD 129 
#define  MOD_UNLOAD 128 
 int /*<<< orphan*/  UMA_ALIGN_PTR ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/ * ngp_zone ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/ * FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC4(module_t mod, int type, void *unused)
{
	int error = 0;

	switch (type) {
	case MOD_LOAD:
		ngp_zone = FUNC2("ng_pipe", FUNC0(sizeof(struct ngp_hdr),
		    sizeof (struct ngp_fifo)), NULL, NULL, NULL, NULL,
		    UMA_ALIGN_PTR, 0);
		if (ngp_zone == NULL)
			FUNC1("ng_pipe: couldn't allocate descriptor zone");
		break;
	case MOD_UNLOAD:
		FUNC3(ngp_zone);
		break;
	default:
		error = EOPNOTSUPP;
		break;
	}

	return (error);
}