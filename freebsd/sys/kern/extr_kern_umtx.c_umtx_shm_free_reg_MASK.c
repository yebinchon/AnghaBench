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
struct umtx_shm_reg {int /*<<< orphan*/  ushm_obj; TYPE_1__* ushm_cred; } ;
struct TYPE_2__ {int /*<<< orphan*/  cr_ruidinfo; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct umtx_shm_reg*) ; 
 int /*<<< orphan*/  umtx_shm_reg_zone ; 

__attribute__((used)) static void
FUNC4(struct umtx_shm_reg *reg)
{

	FUNC0(reg->ushm_cred->cr_ruidinfo, -1, 0);
	FUNC1(reg->ushm_cred);
	FUNC2(reg->ushm_obj);
	FUNC3(umtx_shm_reg_zone, reg);
}