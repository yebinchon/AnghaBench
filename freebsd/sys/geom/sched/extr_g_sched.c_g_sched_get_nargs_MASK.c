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
struct gctl_req {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct gctl_req*,char*) ; 
 int* FUNC1 (struct gctl_req*,char*,int) ; 

__attribute__((used)) static int
FUNC2(struct gctl_req *req)
{
	int *nargs;

	nargs = FUNC1(req, "nargs", sizeof(*nargs));
	if (nargs == NULL) {
		FUNC0(req, "No 'nargs' argument");
		return (0);
	}
	if (*nargs <= 0)
		FUNC0(req, "Missing device(s).");
	return (*nargs);
}