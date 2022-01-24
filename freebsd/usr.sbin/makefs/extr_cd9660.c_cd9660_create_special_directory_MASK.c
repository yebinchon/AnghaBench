#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u_char ;
typedef  int /*<<< orphan*/  iso9660_disk ;
struct TYPE_12__ {scalar_t__ type; int /*<<< orphan*/  cn_children; struct TYPE_12__* dot_dot_record; struct TYPE_12__* dot_record; TYPE_1__* isoDirRecord; struct TYPE_12__* parent; } ;
typedef  TYPE_2__ cd9660node ;
struct TYPE_11__ {int* length; } ;

/* Variables and functions */
 scalar_t__ CD9660_TYPE_DOT ; 
 scalar_t__ CD9660_TYPE_DOTDOT ; 
 TYPE_2__* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_2__*,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC4 (int /*<<< orphan*/ *,char*,TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cn_next_child ; 

__attribute__((used)) static cd9660node *
FUNC5(iso9660_disk *diskStructure, u_char type,
    cd9660node *parent)
{
	cd9660node *temp, *first;
	char na[2];

	FUNC3(parent != NULL);

	if (type == CD9660_TYPE_DOT)
		na[0] = 0;
	else if (type == CD9660_TYPE_DOTDOT)
		na[0] = 1;
	else
		return 0;

	na[1] = 0;
	if ((temp = FUNC4(diskStructure, na, parent,
	    0, 0)) == NULL)
		return NULL;

	temp->parent = parent;
	temp->type = type;
	temp->isoDirRecord->length[0] = 34;
	/* Dot record is always first */
	if (type == CD9660_TYPE_DOT) {
		parent->dot_record = temp;
		FUNC2(&parent->cn_children, temp, cn_next_child);
	/* DotDot should be second */
	} else if (type == CD9660_TYPE_DOTDOT) {
		parent->dot_dot_record = temp;
		/*
                 * If the first child is the dot record, insert
                 * this second.  Otherwise, insert it at the head.
		 */
		if ((first = FUNC0(&parent->cn_children)) == NULL ||
		    (first->type & CD9660_TYPE_DOT) == 0) {
			FUNC2(&parent->cn_children, temp,
			    cn_next_child);
		} else {
			FUNC1(&parent->cn_children, first, temp,
			    cn_next_child);
		}
	}

	return temp;
}