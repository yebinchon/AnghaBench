#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_9__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  off_t ;
struct TYPE_14__ {int str_numstr; } ;
struct TYPE_12__ {unsigned int str_numstr; } ;
struct TYPE_13__ {scalar_t__ percent; int pos; int /*<<< orphan*/  datfd; int /*<<< orphan*/ * child; TYPE_1__ tbl; int /*<<< orphan*/  name; struct TYPE_13__* next; } ;
typedef  TYPE_2__ FILEDESC ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 TYPE_2__* File_list ; 
 TYPE_2__* Fortfile ; 
 scalar_t__ NO_PROB ; 
 TYPE_9__ Noprob_tbl ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/ * Seekpts ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 TYPE_2__* FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 

__attribute__((used)) static void
FUNC10(void)
{
	FILEDESC	*fp;
	int		choice;

	if (File_list->next == NULL || File_list->percent == NO_PROB)
		fp = File_list;
	else {
		choice = FUNC1(100);
		FUNC0(1, (stderr, "choice = %d\n", choice));
		for (fp = File_list; fp->percent != NO_PROB; fp = fp->next)
			if (choice < fp->percent)
				break;
			else {
				choice -= fp->percent;
				FUNC0(1, (stderr,
					    "    skip \"%s\", %d%% (choice = %d)\n",
					    fp->name, fp->percent, choice));
			}
			FUNC0(1, (stderr,
				    "using \"%s\", %d%% (choice = %d)\n",
				    fp->name, fp->percent, choice));
	}
	if (fp->percent != NO_PROB)
		FUNC4(fp);
	else {
		if (fp->next != NULL) {
			FUNC9(fp);
			choice = FUNC1(Noprob_tbl.str_numstr);
			FUNC0(1, (stderr, "choice = %d (of %u) \n", choice,
				    Noprob_tbl.str_numstr));
			while ((unsigned int)choice >= fp->tbl.str_numstr) {
				choice -= fp->tbl.str_numstr;
				fp = fp->next;
				FUNC0(1, (stderr,
					    "    skip \"%s\", %u (choice = %d)\n",
					    fp->name, fp->tbl.str_numstr,
					    choice));
			}
			FUNC0(1, (stderr, "using \"%s\", %u\n", fp->name,
				    fp->tbl.str_numstr));
		}
		FUNC4(fp);
	}
	if (fp->child != NULL) {
		FUNC0(1, (stderr, "picking child\n"));
		fp = FUNC7(fp);
	}
	Fortfile = fp;
	FUNC3(fp);
	FUNC6(fp);
	FUNC5(fp->datfd,
	    (off_t) (sizeof fp->tbl + fp->pos * sizeof Seekpts[0]), SEEK_SET);
	FUNC8(fp->datfd, Seekpts, sizeof Seekpts);
	Seekpts[0] = FUNC2(Seekpts[0]);
	Seekpts[1] = FUNC2(Seekpts[1]);
}