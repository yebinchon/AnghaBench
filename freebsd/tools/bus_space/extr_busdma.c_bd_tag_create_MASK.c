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
typedef  int /*<<< orphan*/  u_long ;
typedef  int /*<<< orphan*/  u_int ;
struct obj {int oid; } ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  O_RDWR ; 
 int PATH_MAX ; 
 struct obj* FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  errno ; 
 int FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int FUNC3 (char*,int,char*,char const*) ; 

int
FUNC4(const char *dev, u_long align, u_long bndry, u_long maxaddr,
    u_long maxsz, u_int nsegs, u_long maxsegsz, u_int datarate, u_int flags)
{
	char path[PATH_MAX];
	struct obj *tag;
	int fd, len;

	len = FUNC3(path, PATH_MAX, "/dev/proto/%s/busdma", dev);
	if (len >= PATH_MAX) {
		errno = EINVAL;
		return (-1);
	}
	fd = FUNC2(path, O_RDWR);
	if (fd == -1)
		return (-1);

	tag = FUNC0(NULL, fd, align, bndry, maxaddr, maxsz, nsegs,
	    maxsegsz, datarate, flags);
	if (tag == NULL) {
		FUNC1(fd);
		return (-1);
	}
	return (tag->oid);
}