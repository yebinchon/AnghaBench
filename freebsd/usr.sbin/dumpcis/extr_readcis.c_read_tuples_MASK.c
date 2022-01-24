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
typedef  int uint32_t ;
struct tuple_list {struct tuple_list* next; } ;
struct tuple {int length; int /*<<< orphan*/  data; } ;
typedef  int off_t ;

/* Variables and functions */
 int /*<<< orphan*/  CIS_LINKTARGET ; 
 int /*<<< orphan*/  CIS_LONGLINK_A ; 
 int /*<<< orphan*/  CIS_LONGLINK_C ; 
 int /*<<< orphan*/  CIS_NOLINK ; 
 int MDF_ATTR ; 
 scalar_t__ FUNC0 (int,int,int) ; 
 struct tuple* FUNC1 (struct tuple_list*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 void* FUNC3 (int,int,int) ; 
 struct tuple_list* tlist ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct tuple_list *
FUNC5(int fd)
{
	struct tuple_list *tl = 0, *last_tl;
	struct tuple *tp;
	int     flag;
	off_t   offs;

	tlist = 0;
	last_tl = tlist = FUNC3(fd, MDF_ATTR, (off_t) 0);

	/* Now start processing the links (if any). */
	do {
		flag = MDF_ATTR;
		tp = FUNC1(last_tl, CIS_LONGLINK_A);
		if (tp == NULL) {
			flag = 0;
			tp = FUNC1(last_tl, CIS_LONGLINK_C);
		}

		if (tp == NULL || tp->length != 4)
			break;

		offs = (uint32_t)FUNC4(tp->data);
#ifdef	DEBUG
		printf("Checking long link at %zd (%s memory)\n",
		    offs, flag ? "Attribute" : "Common");
#endif
		/*
		 * If a link was found, it looks sane read the tuple list from it.
		 */
		if (offs > 0 && offs < 32 * 1024 && FUNC0(fd, offs, flag)) {
			tl = FUNC3(fd, flag, offs);
			last_tl->next = tl;
			last_tl = tl;
		}
	} while (tl);

	/*
	 * If the primary list had no NOLINK tuple, and no LINKTARGET, then try
	 * to read a tuple list at common memory (offset 0).
	 */
	if (FUNC1(tlist, CIS_NOLINK) == 0 &&
	    FUNC1(tlist, CIS_LINKTARGET) == 0 &&
	    FUNC0(fd, (off_t) 0, 0)) {
#ifdef	DEBUG
		printf("Reading long link at 0 (Common memory)\n");
#endif
		tlist->next = FUNC3(fd, 0, 0);
	}
	return (tlist);
}