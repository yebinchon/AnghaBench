#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct statinfo {TYPE_1__* dinfo; } ;
struct TYPE_2__ {int /*<<< orphan*/  generation; int /*<<< orphan*/  numdevs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  devstat_errbuf ; 
 int FUNC1 (int /*<<< orphan*/ *,struct statinfo*) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  generation ; 
 int /*<<< orphan*/  num_devices ; 

void
FUNC3(struct statinfo* dev)
{
	switch (FUNC1(NULL, dev)) {
	case -1:
		FUNC2(1, "%s", devstat_errbuf);
		break;
	case 1:
		num_devices = dev->dinfo->numdevs;
		generation = dev->dinfo->generation;
		FUNC0("refresh", NULL);
		break;
	default:
		break;
	}
}