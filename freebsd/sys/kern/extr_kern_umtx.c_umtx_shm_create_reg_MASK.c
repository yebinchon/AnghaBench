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
struct umtx_shm_reg {int ushm_refcnt; int ushm_flags; int /*<<< orphan*/  ushm_obj; int /*<<< orphan*/  ushm_cred; int /*<<< orphan*/  ushm_key; } ;
struct TYPE_3__ {int /*<<< orphan*/  object; } ;
struct TYPE_4__ {TYPE_1__ shared; } ;
struct umtx_key {size_t hash; TYPE_2__ info; } ;
struct ucred {int /*<<< orphan*/  cr_ruidinfo; } ;
struct thread {struct ucred* td_ucred; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct umtx_shm_reg*,int /*<<< orphan*/ ) ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int /*<<< orphan*/  O_RDWR ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  RLIMIT_UMTXP ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct umtx_shm_reg*,int /*<<< orphan*/ ) ; 
 int USHMF_OBJ_LINKED ; 
 int USHMF_REG_LINKED ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct umtx_key const*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ucred*) ; 
 int /*<<< orphan*/  FUNC6 (struct thread*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct ucred*,int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct umtx_shm_reg* FUNC11 (int /*<<< orphan*/ ,int) ; 
 struct umtx_shm_reg* FUNC12 (struct umtx_key const*) ; 
 struct umtx_shm_reg* FUNC13 (struct umtx_key const*) ; 
 int /*<<< orphan*/  FUNC14 (struct umtx_shm_reg*) ; 
 int /*<<< orphan*/  umtx_shm_lock ; 
 int /*<<< orphan*/  umtx_shm_reg_zone ; 
 int /*<<< orphan*/ * umtx_shm_registry ; 
 int /*<<< orphan*/  ushm_obj_link ; 
 int /*<<< orphan*/  ushm_reg_link ; 

__attribute__((used)) static int
FUNC15(struct thread *td, const struct umtx_key *key,
    struct umtx_shm_reg **res)
{
	struct umtx_shm_reg *reg, *reg1;
	struct ucred *cred;
	int error;

	reg = FUNC12(key);
	if (reg != NULL) {
		*res = reg;
		return (0);
	}
	cred = td->td_ucred;
	if (!FUNC4(cred->cr_ruidinfo, 1, FUNC6(td, RLIMIT_UMTXP)))
		return (ENOMEM);
	reg = FUNC11(umtx_shm_reg_zone, M_WAITOK | M_ZERO);
	reg->ushm_refcnt = 1;
	FUNC3(key, &reg->ushm_key, sizeof(*key));
	reg->ushm_obj = FUNC9(td->td_ucred, O_RDWR);
	reg->ushm_cred = FUNC5(cred);
	error = FUNC10(reg->ushm_obj, PAGE_SIZE);
	if (error != 0) {
		FUNC14(reg);
		return (error);
	}
	FUNC7(&umtx_shm_lock);
	reg1 = FUNC13(key);
	if (reg1 != NULL) {
		FUNC8(&umtx_shm_lock);
		FUNC14(reg);
		*res = reg1;
		return (0);
	}
	reg->ushm_refcnt++;
	FUNC1(&umtx_shm_registry[key->hash], reg, ushm_reg_link);
	FUNC0(FUNC2(key->info.shared.object), reg,
	    ushm_obj_link);
	reg->ushm_flags = USHMF_REG_LINKED | USHMF_OBJ_LINKED;
	FUNC8(&umtx_shm_lock);
	*res = reg;
	return (0);
}