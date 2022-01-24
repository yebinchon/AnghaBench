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
struct cdev {char const* si_name; } ;
typedef  int /*<<< orphan*/  prefix ;

/* Variables and functions */
 int MAKEDEV_NOWAIT ; 
 int M_NOWAIT ; 
 int /*<<< orphan*/  M_TEMP ; 
 int M_WAITOK ; 
 scalar_t__ cold ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,char const*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 char* FUNC2 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*,int) ; 
 int FUNC4 (char const*) ; 

__attribute__((used)) static void
FUNC5(struct cdev *dev, const char *ev, int flags)
{
	static const char prefix[] = "cdev=";
	char *data;
	int namelen, mflags;

	if (cold)
		return;
	mflags = (flags & MAKEDEV_NOWAIT) ? M_NOWAIT : M_WAITOK;
	namelen = FUNC4(dev->si_name);
	data = FUNC2(namelen + sizeof(prefix), M_TEMP, mflags);
	if (data == NULL)
		return;
	FUNC3(data, prefix, sizeof(prefix) - 1);
	FUNC3(data + sizeof(prefix) - 1, dev->si_name, namelen + 1);
	FUNC0("DEVFS", "CDEV", ev, data, mflags);
	FUNC1(data, M_TEMP);
}