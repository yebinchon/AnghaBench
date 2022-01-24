#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  iso9660_disk ;
struct TYPE_10__ {int type; TYPE_1__* node; scalar_t__ fileDataLength; } ;
typedef  TYPE_2__ cd9660node ;
struct TYPE_9__ {int /*<<< orphan*/ * inode; } ;

/* Variables and functions */
 int CD9660_TYPE_FILE ; 
 int CD9660_TYPE_VIRTUAL ; 
 TYPE_2__* FUNC0 (int /*<<< orphan*/ *,char const*,TYPE_2__*,int,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/ * FUNC2 (int,int) ; 

__attribute__((used)) static cd9660node *
FUNC3(iso9660_disk *diskStructure, const char *name,
    cd9660node *parent, cd9660node *me)
{
	cd9660node *temp;

	temp = FUNC0(diskStructure, name, parent, 1, 1);
	if (temp == NULL)
		return NULL;

	temp->fileDataLength = 0;

	temp->type = CD9660_TYPE_FILE | CD9660_TYPE_VIRTUAL;

	temp->node->inode = FUNC2(1, sizeof(*temp->node->inode));
	*temp->node->inode = *me->node->inode;

	if (FUNC1(diskStructure, temp) == 0)
		return NULL;
	return temp;
}