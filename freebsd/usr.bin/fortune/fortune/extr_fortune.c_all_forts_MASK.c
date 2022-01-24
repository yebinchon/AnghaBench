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
struct TYPE_4__ {int num_children; int fd; char* path; char* name; char* datfile; char* posfile; int read_tbl; int was_pos_file; int /*<<< orphan*/ * inf; int /*<<< orphan*/  percent; struct TYPE_4__* parent; struct TYPE_4__* child; struct TYPE_4__* next; } ;
typedef  TYPE_1__ FILEDESC ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  NO_PROB ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  W_OK ; 
 scalar_t__ WriteToDisk ; 
 scalar_t__ FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,char**,char**,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC3 () ; 
 int FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC5 (char*,char) ; 

__attribute__((used)) static void
FUNC6(FILEDESC *fp, char *offensive)
{
	char		*sp;
	FILEDESC	*scene, *obscene;
	int		fd;
	char		*datfile, *posfile;

	if (fp->child != NULL)	/* this is a directory, not a file */
		return;
	if (!FUNC2(offensive, &datfile, &posfile, FALSE))
		return;
	if ((fd = FUNC4(offensive, O_RDONLY)) < 0)
		return;
	FUNC0(1, (stderr, "adding \"%s\" because of -a\n", offensive));
	scene = FUNC3();
	obscene = FUNC3();
	*scene = *fp;

	fp->num_children = 2;
	fp->child = scene;
	scene->next = obscene;
	obscene->next = NULL;
	scene->child = obscene->child = NULL;
	scene->parent = obscene->parent = fp;

	fp->fd = -1;
	scene->percent = obscene->percent = NO_PROB;

	obscene->fd = fd;
	obscene->inf = NULL;
	obscene->path = offensive;
	if ((sp = FUNC5(offensive, '/')) == NULL)
		obscene->name = offensive;
	else
		obscene->name = ++sp;
	obscene->datfile = datfile;
	obscene->posfile = posfile;
	obscene->read_tbl = false;
	if (WriteToDisk)
		obscene->was_pos_file = (FUNC1(obscene->posfile, W_OK) >= 0);
}