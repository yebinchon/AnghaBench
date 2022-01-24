#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct stat {int /*<<< orphan*/  st_dev; int /*<<< orphan*/  st_ino; } ;
struct TYPE_4__ {char const* name; int /*<<< orphan*/  fsid; int /*<<< orphan*/  ino; struct TYPE_4__* next; } ;
typedef  TYPE_1__ DEVS ;

/* Variables and functions */
 TYPE_1__* devs ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC1 (int) ; 
 scalar_t__ FUNC2 (char const*,struct stat*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*) ; 

int
FUNC4(const char *filename)
{
	struct stat statbuf;
	DEVS *cur;

	if (FUNC2(filename, &statbuf)) {
		FUNC3("%s", filename);
		return (0);
	}
	if ((cur = FUNC1(sizeof(DEVS))) == NULL)
		FUNC0(1, NULL);
	cur->next = devs;
	devs = cur;

	cur->ino = statbuf.st_ino;
	cur->fsid = statbuf.st_dev;
	cur->name = filename;
	return (1);
}