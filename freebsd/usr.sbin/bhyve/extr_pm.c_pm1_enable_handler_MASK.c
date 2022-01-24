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
typedef  int uint32_t ;
struct vmctx {int dummy; } ;

/* Variables and functions */
 int PM1_GBL_EN ; 
 int PM1_PWRBTN_EN ; 
 int pm1_enable ; 
 int /*<<< orphan*/  pm_lock ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct vmctx*) ; 

__attribute__((used)) static int
FUNC3(struct vmctx *ctx, int vcpu, int in, int port, int bytes,
    uint32_t *eax, void *arg)
{

	if (bytes != 2)
		return (-1);

	FUNC0(&pm_lock);
	if (in)
		*eax = pm1_enable;
	else {
		/*
		 * Only permit certain bits to be set.  We never use
		 * the global lock, but ACPI-CA whines profusely if it
		 * can't set GBL_EN.
		 */
		pm1_enable = *eax & (PM1_PWRBTN_EN | PM1_GBL_EN);
		FUNC2(ctx);
	}
	FUNC1(&pm_lock);
	return (0);
}