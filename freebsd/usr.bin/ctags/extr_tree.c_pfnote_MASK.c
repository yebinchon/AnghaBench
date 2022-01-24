#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  nbuf ;
struct TYPE_7__ {char* file; int lno; void* pat; scalar_t__ right; scalar_t__ left; void* entry; } ;
typedef  TYPE_1__ NODE ;

/* Variables and functions */
 char EOS ; 
 int MAXTOKEN ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,TYPE_1__*) ; 
 char* curfile ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 TYPE_1__* head ; 
 char const* lbuf ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (char const*,char*) ; 
 void* FUNC8 (char const*) ; 
 char* FUNC9 (char*,char) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int /*<<< orphan*/  xflag ; 

void
FUNC11(const char *name, int ln)
{
	NODE	*np;
	char	*fp;
	char	nbuf[MAXTOKEN];

	/*NOSTRICT*/
	if (!(np = (NODE *)FUNC4(sizeof(NODE)))) {
		FUNC10("too many entries to sort");
		FUNC5(head);
		FUNC3(head);
		/*NOSTRICT*/
		if (!(head = np = (NODE *)FUNC4(sizeof(NODE))))
			FUNC2(1, "out of space");
	}
	if (!xflag && !FUNC7(name, "main")) {
		if (!(fp = FUNC9(curfile, '/')))
			fp = curfile;
		else
			++fp;
		(void)FUNC6(nbuf, sizeof(nbuf), "M%s", fp);
		fp = FUNC9(nbuf, '.');
		if (fp && !fp[2])
			*fp = EOS;
		name = nbuf;
	}
	if (!(np->entry = FUNC8(name)))
		FUNC1(1, NULL);
	np->file = curfile;
	np->lno = ln;
	np->left = np->right = 0;
	if (!(np->pat = FUNC8(lbuf)))
		FUNC1(1, NULL);
	if (!head)
		head = np;
	else
		FUNC0(np, head);
}