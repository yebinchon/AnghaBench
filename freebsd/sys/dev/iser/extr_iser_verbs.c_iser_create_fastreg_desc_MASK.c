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
struct ib_pd {int dummy; } ;
struct ib_device {int dummy; } ;
struct fast_reg_descriptor {int /*<<< orphan*/  rsc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  M_ISER_VERBS ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int /*<<< orphan*/  FUNC1 (struct fast_reg_descriptor*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct ib_device*,struct ib_pd*,int /*<<< orphan*/ *) ; 
 struct fast_reg_descriptor* FUNC3 (int,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static struct fast_reg_descriptor *
FUNC4(struct ib_device *ib_device, struct ib_pd *pd)
{
	struct fast_reg_descriptor *desc;
	int ret;

	desc = FUNC3(sizeof(*desc), M_ISER_VERBS, M_WAITOK | M_ZERO);
	if (!desc) {
		FUNC0("Failed to allocate a new fastreg descriptor");
		return (NULL);
	}

	ret = FUNC2(ib_device, pd, &desc->rsc);
	if (ret) {
		FUNC0("failed to allocate reg_resources");
		goto err;
	}

	return (desc);
err:
	FUNC1(desc, M_ISER_VERBS);
	return (NULL);
}