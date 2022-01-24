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
struct cuse_server {scalar_t__ is_closing; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 (void**) ; 

__attribute__((used)) static int
FUNC3(struct cuse_server **ppcs)
{
	struct cuse_server *pcs;
	int error;

	error = FUNC2((void **)&pcs);
	if (error != 0) {
		*ppcs = NULL;
		return (error);
	}
	/* check if closing */
	FUNC0();
	if (pcs->is_closing) {
		FUNC1();
		*ppcs = NULL;
		return (EINVAL);
	}
	FUNC1();
	*ppcs = pcs;
	return (0);
}