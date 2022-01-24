#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {void* str_flags; void* str_shortlen; void* str_longlen; void* str_numstr; } ;
struct TYPE_6__ {char* path; scalar_t__ read_tbl; TYPE_2__ tbl; struct TYPE_6__* next; struct TYPE_6__* child; int /*<<< orphan*/  datfile; } ;
typedef  TYPE_1__ FILEDESC ;

/* Variables and functions */
 int /*<<< orphan*/  O_RDONLY ; 
 scalar_t__ TRUE ; 
 void* FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char*) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int,char*,int) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 

__attribute__((used)) static void
FUNC9(FILEDESC *fp)
{
	int		fd;
	FILEDESC	*child;

	if (fp->read_tbl)
		return;
	if (fp->child == NULL) {
		if ((fd = FUNC4(fp->datfile, O_RDONLY)) < 0) {
			FUNC5(fp->datfile);
			FUNC2(1);
		}
		if (FUNC6(fd, (char *) &fp->tbl, sizeof fp->tbl) != sizeof fp->tbl) {
			(void)FUNC3(stderr,
			    "fortune: %s corrupted\n", fp->path);
			FUNC2(1);
		}
		/* fp->tbl.str_version = be32toh(fp->tbl.str_version); */
		fp->tbl.str_numstr = FUNC0(fp->tbl.str_numstr);
		fp->tbl.str_longlen = FUNC0(fp->tbl.str_longlen);
		fp->tbl.str_shortlen = FUNC0(fp->tbl.str_shortlen);
		fp->tbl.str_flags = FUNC0(fp->tbl.str_flags);
		(void) FUNC1(fd);
	}
	else {
		FUNC8(&fp->tbl);
		for (child = fp->child; child != NULL; child = child->next) {
			FUNC9(child);
			FUNC7(&fp->tbl, &child->tbl);
		}
	}
	fp->read_tbl = TRUE;
}