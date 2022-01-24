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
struct utsname {int /*<<< orphan*/  version; int /*<<< orphan*/  release; int /*<<< orphan*/  sysname; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct utsname*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,char*,...) ; 

int FUNC3(struct utsname *buf)
{
	unsigned v = (unsigned)FUNC0();
	FUNC1(buf, 0, sizeof(*buf));
	FUNC2(buf->sysname, sizeof(buf->sysname), "Windows");
	FUNC2(buf->release, sizeof(buf->release),
		 "%u.%u", v & 0xff, (v >> 8) & 0xff);
	/* assuming NT variants only.. */
	FUNC2(buf->version, sizeof(buf->version),
		  "%u", (v >> 16) & 0x7fff);
	return 0;
}