#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct ct_data {int /*<<< orphan*/  ct_lock; scalar_t__ ct_closed; scalar_t__ ct_closing; } ;
struct TYPE_3__ {scalar_t__ cl_private; } ;
typedef  TYPE_1__ CLIENT ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,char*) ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC1 (struct ct_data*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct ct_data*) ; 

__attribute__((used)) static void
FUNC5(CLIENT *cl)
{
	struct ct_data *ct = (struct ct_data *) cl->cl_private;

	FUNC2(&ct->ct_lock);

	if (ct->ct_closed) {
		FUNC3(&ct->ct_lock);
		return;
	}

	if (ct->ct_closing) {
		while (ct->ct_closing)
			FUNC1(ct, &ct->ct_lock, 0, "rpcclose", 0);
		FUNC0(ct->ct_closed, ("client should be closed"));
		FUNC3(&ct->ct_lock);
		return;
	}

	ct->ct_closing = FALSE;
	ct->ct_closed = TRUE;
	FUNC3(&ct->ct_lock);
	FUNC4(ct);
}