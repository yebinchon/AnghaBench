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
typedef  scalar_t__ quad_t ;

/* Variables and functions */
 int EINVAL ; 
 int ENOATTR ; 
 int /*<<< orphan*/  FUNC0 (struct gctl_req*,char*,int,char const*,char const*) ; 
 char* FUNC1 (struct gctl_req*,char const*) ; 
 scalar_t__ FUNC2 (char const*,char**,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(struct gctl_req *req, const char *name, quad_t *v)
{
	const char *p;
	char *x;
	quad_t q;

	p = FUNC1(req, name);
	if (p == NULL)
		return (ENOATTR);
	q = FUNC2(p, &x, 0);
	if (*x != '\0' || q < 0) {
		FUNC0(req, "%d %s '%s'", EINVAL, name, p);
		return (EINVAL);
	}
	*v = q;
	return (0);
}