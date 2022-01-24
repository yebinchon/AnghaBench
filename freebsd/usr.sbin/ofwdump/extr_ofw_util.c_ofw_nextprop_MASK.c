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
struct ofiocdesc {char const* of_name; int of_buflen; char* of_buf; int /*<<< orphan*/  of_namelen; int /*<<< orphan*/  of_nodeid; } ;
typedef  int /*<<< orphan*/  phandle_t ;

/* Variables and functions */
 scalar_t__ ENOENT ; 
 int /*<<< orphan*/  EX_IOERR ; 
 int /*<<< orphan*/  OFIOCNEXTPROP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ errno ; 
 int FUNC1 (int,int /*<<< orphan*/ ,struct ofiocdesc*) ; 
 int /*<<< orphan*/  FUNC2 (char const*) ; 

int
FUNC3(int fd, phandle_t node, const char *prev, char *buf, int buflen)
{
	struct ofiocdesc d;

	d.of_nodeid = node;
	d.of_namelen = prev != NULL ? FUNC2(prev) : 0;
	d.of_name = prev;
	d.of_buflen = buflen;
	d.of_buf = buf;
	if (FUNC1(fd, OFIOCNEXTPROP, &d) == -1) {
		if (errno == ENOENT)
			return (0);
		else
			FUNC0(EX_IOERR, "ioctl(..., OFIOCNEXTPROP, ...) failed");
	}
	return (d.of_buflen);
}