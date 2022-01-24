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
typedef  int /*<<< orphan*/  uint32_t ;
struct xsd_sockmsg {scalar_t__ len; int /*<<< orphan*/  type; } ;
struct TYPE_2__ {int /*<<< orphan*/  request_mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_1__ xs ; 
 int FUNC2 (int /*<<< orphan*/ *,scalar_t__*,void**) ; 
 int FUNC3 (struct xsd_sockmsg*,scalar_t__) ; 

int
FUNC4(struct xsd_sockmsg *msg, void **result)
{
	uint32_t request_type;
	int error;

	request_type = msg->type;

	FUNC0(&xs.request_mutex);
	if ((error = FUNC3(msg, sizeof(*msg) + msg->len)) == 0)
		error = FUNC2(&msg->type, &msg->len, result);
	FUNC1(&xs.request_mutex);

	return (error);
}