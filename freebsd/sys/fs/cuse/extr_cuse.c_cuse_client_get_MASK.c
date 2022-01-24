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
struct cuse_client {TYPE_1__* server; } ;
struct TYPE_2__ {scalar_t__ is_closing; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct cuse_client*) ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 (void**) ; 

__attribute__((used)) static int
FUNC4(struct cuse_client **ppcc)
{
	struct cuse_client *pcc;
	int error;

	/* try to get private data */
	error = FUNC3((void **)&pcc);
	if (error != 0) {
		*ppcc = NULL;
		return (error);
	}
	/* check if closing */
	FUNC1();
	if (FUNC0(pcc) || pcc->server->is_closing) {
		FUNC2();
		*ppcc = NULL;
		return (EINVAL);
	}
	FUNC2();
	*ppcc = pcc;
	return (0);
}