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
struct TYPE_2__ {size_t hash; } ;
struct umtx_shm_reg {scalar_t__ ushm_refcnt; int ushm_flags; TYPE_1__ ushm_key; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct umtx_shm_reg*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MA_OWNED ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct umtx_shm_reg*,int /*<<< orphan*/ ) ; 
 int USHMF_OBJ_LINKED ; 
 int USHMF_REG_LINKED ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  umtx_shm_lock ; 
 int /*<<< orphan*/ * umtx_shm_registry ; 
 int /*<<< orphan*/  ushm_obj_link ; 
 int /*<<< orphan*/  ushm_reg_link ; 

__attribute__((used)) static bool
FUNC4(struct umtx_shm_reg *reg, bool force)
{
	bool res;

	FUNC3(&umtx_shm_lock, MA_OWNED);
	FUNC0(reg->ushm_refcnt > 0, ("ushm_reg %p refcnt 0", reg));
	reg->ushm_refcnt--;
	res = reg->ushm_refcnt == 0;
	if (res || force) {
		if ((reg->ushm_flags & USHMF_REG_LINKED) != 0) {
			FUNC2(&umtx_shm_registry[reg->ushm_key.hash],
			    reg, ushm_reg_link);
			reg->ushm_flags &= ~USHMF_REG_LINKED;
		}
		if ((reg->ushm_flags & USHMF_OBJ_LINKED) != 0) {
			FUNC1(reg, ushm_obj_link);
			reg->ushm_flags &= ~USHMF_OBJ_LINKED;
		}
	}
	return (res);
}