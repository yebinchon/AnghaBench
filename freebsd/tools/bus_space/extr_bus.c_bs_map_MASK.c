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
struct resource {int fd; int rid; scalar_t__ ofs; int /*<<< orphan*/  size; int /*<<< orphan*/  ptr; int /*<<< orphan*/  addr; } ;
struct proto_ioc_region {int /*<<< orphan*/  size; int /*<<< orphan*/  address; } ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int MAP_NOCORE ; 
 int MAP_SHARED ; 
 int /*<<< orphan*/  O_RDWR ; 
 int PATH_MAX ; 
 int /*<<< orphan*/  PROTO_IOC_REGION ; 
 int PROT_READ ; 
 int PROT_WRITE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  errno ; 
 int FUNC1 (int,int /*<<< orphan*/ ,struct proto_ioc_region*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int,int,scalar_t__) ; 
 int FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int FUNC4 () ; 
 struct resource* FUNC5 (int) ; 
 int FUNC6 (char*,int,char*,char const*,char const*) ; 

int
FUNC7(const char *dev, const char *res)
{
	char path[PATH_MAX];
	struct proto_ioc_region region;
	struct resource *r;
	int len, rid;

	len = FUNC6(path, PATH_MAX, "/dev/proto/%s/%s", dev, res);
	if (len >= PATH_MAX) {
		errno = EINVAL;
		return (-1);
	}
	rid = FUNC4();
	if (rid == -1)
		return (-1);
	r = FUNC5(rid);
	if (r == NULL)
		return (-1);
	r->fd = FUNC3(path, O_RDWR);
	if (r->fd == -1)
		return (-1);
	r->rid = -1;
	if (FUNC1(r->fd, PROTO_IOC_REGION, &region) == -1) {
		FUNC0(r->fd);
		r->fd = -1;
		return (-1);
	}
	r->addr = region.address;
	r->size = region.size;
	r->ofs = 0;
	r->ptr = FUNC2(NULL, r->size, PROT_READ | PROT_WRITE,
	    MAP_NOCORE | MAP_SHARED, r->fd, r->ofs);
	return (rid);
}