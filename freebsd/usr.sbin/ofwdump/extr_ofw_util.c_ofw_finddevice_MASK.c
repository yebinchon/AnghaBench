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
struct ofiocdesc {char const* of_name; scalar_t__ of_nodeid; int /*<<< orphan*/ * of_buf; scalar_t__ of_buflen; int /*<<< orphan*/  of_namelen; } ;
typedef  scalar_t__ phandle_t ;

/* Variables and functions */
 scalar_t__ ENOENT ; 
 int /*<<< orphan*/  EX_IOERR ; 
 int /*<<< orphan*/  EX_UNAVAILABLE ; 
 int /*<<< orphan*/  OFIOCFINDDEVICE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ errno ; 
 int FUNC1 (int,int /*<<< orphan*/ ,struct ofiocdesc*) ; 
 int /*<<< orphan*/  FUNC2 (char const*) ; 

phandle_t
FUNC3(int fd, const char *name)
{
	struct ofiocdesc d;

	d.of_nodeid = 0;
	d.of_namelen = FUNC2(name);
	d.of_name = name;
	d.of_buflen = 0;
	d.of_buf = NULL;
	if (FUNC1(fd, OFIOCFINDDEVICE, &d) == -1) {
		if (errno == ENOENT)
			FUNC0(EX_UNAVAILABLE, "Node '%s' not found", name);
		else
			FUNC0(EX_IOERR,
			    "ioctl(..., OFIOCFINDDEVICE, ...) failed");
	}
	return (d.of_nodeid);
}