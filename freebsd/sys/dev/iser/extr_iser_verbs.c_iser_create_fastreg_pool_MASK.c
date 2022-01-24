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
struct iser_device {int /*<<< orphan*/  pd; int /*<<< orphan*/  ib_device; } ;
struct TYPE_2__ {scalar_t__ pool_size; int /*<<< orphan*/  pool; } ;
struct ib_conn {TYPE_1__ fastreg; struct iser_device* device; } ;
struct fast_reg_descriptor {int /*<<< orphan*/  list; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 struct fast_reg_descriptor* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ib_conn*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int
FUNC5(struct ib_conn *ib_conn, unsigned cmds_max)
{
	struct iser_device *device = ib_conn->device;
	struct fast_reg_descriptor *desc;
	int i;

	FUNC0(&ib_conn->fastreg.pool);
	ib_conn->fastreg.pool_size = 0;
	for (i = 0; i < cmds_max; i++) {
		desc = FUNC2(device->ib_device, device->pd);
		if (!desc) {
			FUNC1("Failed to create fastreg descriptor");
			goto err;
		}

		FUNC4(&desc->list, &ib_conn->fastreg.pool);
		ib_conn->fastreg.pool_size++;
	}

	return (0);

err:
	FUNC3(ib_conn);
	return (ENOMEM);
}