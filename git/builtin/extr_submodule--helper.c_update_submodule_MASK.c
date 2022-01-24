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
struct update_clone_data {int just_cloned; TYPE_1__* sub; int /*<<< orphan*/  oid; } ;
struct TYPE_2__ {char* path; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char*,int,char*) ; 
 char* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stdout ; 

__attribute__((used)) static void FUNC2(struct update_clone_data *ucd)
{
	FUNC0(stdout, "dummy %s %d\t%s\n",
		FUNC1(&ucd->oid),
		ucd->just_cloned,
		ucd->sub->path);
}