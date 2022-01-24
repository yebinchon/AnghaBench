#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {TYPE_1__* node; } ;
typedef  TYPE_2__ cd9660node ;
struct TYPE_4__ {char* root; char* path; char* name; } ;

/* Variables and functions */
 int CD9660MAXPATH ; 
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (char*,int,char*,char*,char*,char*) ; 

void
FUNC2(cd9660node *node, char *buf)
{
	int len;

	len = CD9660MAXPATH + 1;
	len = FUNC1(buf, len, "%s/%s/%s", node->node->root,
	    node->node->path, node->node->name);
	if (len > CD9660MAXPATH)
		FUNC0(EXIT_FAILURE, "Pathname too long.");
}