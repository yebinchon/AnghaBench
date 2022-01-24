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
struct icl_pdu {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  UMA_ALIGN_PTR ; 
 int /*<<< orphan*/  icl_ncons ; 
 int /*<<< orphan*/  icl_pdu_zone ; 
 int FUNC1 (char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  icl_soft_limits ; 
 int /*<<< orphan*/  icl_soft_new_conn ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(void)
{
	int error;

	icl_pdu_zone = FUNC3("icl_pdu",
	    sizeof(struct icl_pdu), NULL, NULL, NULL, NULL,
	    UMA_ALIGN_PTR, 0);
	FUNC2(&icl_ncons, 0);

	/*
	 * The reason we call this "none" is that to the user,
	 * it's known as "offload driver"; "offload driver: soft"
	 * doesn't make much sense.
	 */
	error = FUNC1("none", false, 0,
	    icl_soft_limits, icl_soft_new_conn);
	FUNC0(error == 0, ("failed to register"));

#if defined(ICL_KERNEL_PROXY) && 0
	/*
	 * Debugging aid for kernel proxy functionality.
	 */
	error = icl_register("proxytest", true, 0,
	    icl_soft_limits, icl_soft_new_conn);
	KASSERT(error == 0, ("failed to register"));
#endif

	return (error);
}