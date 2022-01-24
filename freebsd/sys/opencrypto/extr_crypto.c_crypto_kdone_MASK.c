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
struct cryptocap {scalar_t__ cc_koperations; int cc_flags; } ;
struct crypto_ret_worker {int /*<<< orphan*/  crp_ret_kq; int /*<<< orphan*/  crp_ret_q; } ;
struct cryptkop {scalar_t__ krp_status; size_t krp_hid; } ;
struct TYPE_2__ {int /*<<< orphan*/  cs_kerrs; } ;

/* Variables and functions */
 int CRYPTOCAP_F_CLEANUP ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 struct crypto_ret_worker* FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct crypto_ret_worker*) ; 
 int /*<<< orphan*/  FUNC4 (struct crypto_ret_worker*) ; 
 int /*<<< orphan*/  FUNC5 (struct crypto_ret_worker*) ; 
 int /*<<< orphan*/  FUNC6 (int,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,struct cryptkop*,int /*<<< orphan*/ ) ; 
 struct cryptocap* crypto_drivers ; 
 size_t crypto_drivers_num ; 
 int /*<<< orphan*/  FUNC8 (struct cryptocap*) ; 
 TYPE_1__ cryptostats ; 
 int /*<<< orphan*/  krp_next ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

void
FUNC10(struct cryptkop *krp)
{
	struct crypto_ret_worker *ret_worker;
	struct cryptocap *cap;

	if (krp->krp_status != 0)
		cryptostats.cs_kerrs++;
	FUNC0();
	/* XXX: What if driver is loaded in the meantime? */
	if (krp->krp_hid < crypto_drivers_num) {
		cap = &crypto_drivers[krp->krp_hid];
		FUNC6(cap->cc_koperations > 0, ("cc_koperations == 0"));
		cap->cc_koperations--;
		if (cap->cc_flags & CRYPTOCAP_F_CLEANUP)
			FUNC8(cap);
	}
	FUNC1();

	ret_worker = FUNC2(0);

	FUNC4(ret_worker);
	if (FUNC3(ret_worker))
		FUNC9(&ret_worker->crp_ret_q);		/* shared wait channel */
	FUNC7(&ret_worker->crp_ret_kq, krp, krp_next);
	FUNC5(ret_worker);
}