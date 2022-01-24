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
struct ofiocdesc {char const* of_name; int of_buflen; void* of_buf; int /*<<< orphan*/  of_namelen; int /*<<< orphan*/  of_nodeid; } ;
typedef  int /*<<< orphan*/  phandle_t ;

/* Variables and functions */
 scalar_t__ ENOMEM ; 
 int /*<<< orphan*/  EX_IOERR ; 
 int /*<<< orphan*/  OFIOCGET ; 
 int OFIOCMAXVALUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 int FUNC2 (int,int /*<<< orphan*/ ,struct ofiocdesc*) ; 
 int FUNC3 (int,int /*<<< orphan*/ ,char const*) ; 
 void* FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (char const*) ; 

int
FUNC6(int fd, phandle_t node, const char *name, void **buf,
    int *buflen, int reserve)
{
	struct ofiocdesc d;
	int len, rv;

	do {
		len = FUNC3(fd, node, name);
		if (len < 0)
			return (len);
		if (*buflen < len + reserve) {
			if (*buf != NULL)
				FUNC1(*buf);
			*buflen = len + reserve + OFIOCMAXVALUE;
			*buf = FUNC4(*buflen);
		}
		d.of_nodeid = node;
		d.of_namelen = FUNC5(name);
		d.of_name = name;
		d.of_buflen = *buflen - reserve;
		d.of_buf = *buf;
		rv = FUNC2(fd, OFIOCGET, &d);
	} while (rv == -1 && errno == ENOMEM);
	if (rv == -1)
		FUNC0(EX_IOERR, "ioctl(..., OFIOCGET, ...) failed");
	return (d.of_buflen);
}