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
struct sysctl_req {size_t newlen; size_t newidx; scalar_t__ newptr; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (char const*,void*,size_t) ; 

__attribute__((used)) static int
FUNC1(struct sysctl_req *req, void *p, size_t l)
{
	if (!req->newptr)
		return (0);
	if (req->newlen - req->newidx < l)
		return (EINVAL);
	FUNC0((const char *)req->newptr + req->newidx, p, l);
	req->newidx += l;
	return (0);
}