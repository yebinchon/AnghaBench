#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct s_flist {char* fname; struct s_flist* next; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 struct s_flist** fl_nextp ; 
 struct s_flist* FUNC1 (int) ; 

__attribute__((used)) static void
FUNC2(char *s)
{
	struct s_flist *fp;

	if ((fp = FUNC1(sizeof(struct s_flist))) == NULL)
		FUNC0(1, "malloc");
	fp->next = NULL;
	*fl_nextp = fp;
	fp->fname = s;
	fl_nextp = &fp->next;
}