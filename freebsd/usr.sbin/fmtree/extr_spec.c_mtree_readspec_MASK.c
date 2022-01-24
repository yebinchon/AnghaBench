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
typedef  int /*<<< orphan*/  ginfo ;
typedef  int /*<<< orphan*/  buf ;
struct TYPE_7__ {scalar_t__ type; int flags; struct TYPE_7__* next; struct TYPE_7__* prev; struct TYPE_7__* parent; struct TYPE_7__* child; int /*<<< orphan*/  name; } ;
typedef  TYPE_1__ NODE ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ F_DIR ; 
 int F_DONE ; 
 int F_MAGIC ; 
 int /*<<< orphan*/  MAGIC ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int) ; 
 TYPE_1__* FUNC1 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,...) ; 
 scalar_t__ FUNC3 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int,char*) ; 
 scalar_t__ FUNC5 (char) ; 
 int lineno ; 
 int /*<<< orphan*/  FUNC6 (char*,TYPE_1__*) ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC7 (char*,char) ; 
 scalar_t__ FUNC8 (char*,char*) ; 
 scalar_t__ FUNC9 (char*) ; 
 scalar_t__ FUNC10 (char*,int /*<<< orphan*/ ) ; 
 char* FUNC11 (char*,char*) ; 
 int FUNC12 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,TYPE_1__*) ; 

NODE *
FUNC14(FILE *fi)
{
	NODE *centry, *last;
	char *p;
	NODE ginfo, *root;
	int c_cur, c_next;
	char buf[2048];

	centry = last = root = NULL;
	FUNC0(&ginfo, sizeof(ginfo));
	c_cur = c_next = 0;
	for (lineno = 1; FUNC3(buf, sizeof(buf), fi);
	    ++lineno, c_cur = c_next, c_next = 0) {
		/* Skip empty lines. */
		if (buf[0] == '\n')
			continue;

		/* Find end of line. */
		if ((p = FUNC7(buf, '\n')) == NULL)
			FUNC2(1, "line %d too long", lineno);

		/* See if next line is continuation line. */
		if (p[-1] == '\\') {
			--p;
			c_next = 1;
		}

		/* Null-terminate the line. */
		*p = '\0';

		/* Skip leading whitespace. */
		for (p = buf; *p && FUNC5(*p); ++p);

		/* If nothing but whitespace or comment char, continue. */
		if (!*p || *p == '#')
			continue;

#ifdef DEBUG
		(void)fprintf(stderr, "line %d: {%s}\n", lineno, p);
#endif
		if (c_cur) {
			FUNC6(p, centry);
			continue;
		}

		/* Grab file name, "$", "set", or "unset". */
		if ((p = FUNC11(p, "\n\t ")) == NULL)
			FUNC2(1, "line %d: missing field", lineno);

		if (p[0] == '/')
			switch(p[1]) {
			case 's':
				if (FUNC8(p + 1, "set"))
					break;
				FUNC6(NULL, &ginfo);
				continue;
			case 'u':
				if (FUNC8(p + 1, "unset"))
					break;
				FUNC13(NULL, &ginfo);
				continue;
			}

		if (FUNC7(p, '/'))
			FUNC2(1, "line %d: slash character in file name",
			lineno);

		if (!FUNC8(p, "..")) {
			/* Don't go up, if haven't gone down. */
			if (!root)
				goto noparent;
			if (last->type != F_DIR || last->flags & F_DONE) {
				if (last == root)
					goto noparent;
				last = last->parent;
			}
			last->flags |= F_DONE;
			continue;

noparent:		FUNC2(1, "line %d: no parent node", lineno);
		}

		if ((centry = FUNC1(1, sizeof(NODE) + FUNC9(p))) == NULL)
			FUNC2(1, "calloc");
		*centry = ginfo;
#define	MAGIC	"?*["
		if (FUNC10(p, MAGIC))
			centry->flags |= F_MAGIC;
		if (FUNC12(centry->name, p) == -1)
			FUNC2(1, "filename %s is ill-encoded", p);
		FUNC6(NULL, centry);

		if (!root) {
			last = root = centry;
			root->parent = root;
		} else if (last->type == F_DIR && !(last->flags & F_DONE)) {
			centry->parent = last;
			last = last->child = centry;
		} else {
			centry->parent = last->parent;
			centry->prev = last;
			last = last->next = centry;
		}
	}
	return (root);
}