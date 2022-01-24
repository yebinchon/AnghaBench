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
struct TYPE_4__ {int datfd; int fd; int /*<<< orphan*/ * posfile; int /*<<< orphan*/ * datfile; int /*<<< orphan*/ * parent; int /*<<< orphan*/ * child; int /*<<< orphan*/ * prev; int /*<<< orphan*/ * next; int /*<<< orphan*/  read_tbl; int /*<<< orphan*/  percent; int /*<<< orphan*/ * inf; int /*<<< orphan*/  pos; } ;
typedef  TYPE_1__ FILEDESC ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  NO_PROB ; 
 int /*<<< orphan*/  POS_UNKNOWN ; 
 TYPE_1__* FUNC0 (int) ; 

__attribute__((used)) static FILEDESC *
FUNC1(void)
{
	FILEDESC	*fp;

	fp = FUNC0(sizeof(*fp));
	fp->datfd = -1;
	fp->pos = POS_UNKNOWN;
	fp->inf = NULL;
	fp->fd = -1;
	fp->percent = NO_PROB;
	fp->read_tbl = FALSE;
	fp->next = NULL;
	fp->prev = NULL;
	fp->child = NULL;
	fp->parent = NULL;
	fp->datfile = NULL;
	fp->posfile = NULL;

	return (fp);
}