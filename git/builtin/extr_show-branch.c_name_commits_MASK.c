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
struct strbuf {int dummy; } ;
struct commit_name {int generation; int head_name; } ;
struct commit_list {struct commit_list* next; struct commit* item; } ;
struct commit {struct commit_list* parents; } ;

/* Variables and functions */
 struct strbuf STRBUF_INIT ; 
 struct commit_name* FUNC0 (struct commit*) ; 
 int /*<<< orphan*/  FUNC1 (struct commit*,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct commit*) ; 
 int /*<<< orphan*/  FUNC3 (struct strbuf*,char) ; 
 int /*<<< orphan*/  FUNC4 (struct strbuf*,char*,int,...) ; 
 int /*<<< orphan*/  FUNC5 (struct strbuf*,int) ; 
 char* FUNC6 (struct strbuf*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct commit_list *list,
			 struct commit **rev,
			 char **ref_name,
			 int num_rev)
{
	struct commit_list *cl;
	struct commit *c;
	int i;

	/* First give names to the given heads */
	for (cl = list; cl; cl = cl->next) {
		c = cl->item;
		if (FUNC0(c))
			continue;
		for (i = 0; i < num_rev; i++) {
			if (rev[i] == c) {
				FUNC1(c, ref_name[i], 0);
				break;
			}
		}
	}

	/* Then commits on the first parent ancestry chain */
	do {
		i = 0;
		for (cl = list; cl; cl = cl->next) {
			i += FUNC2(cl->item);
		}
	} while (i);

	/* Finally, any unnamed commits */
	do {
		i = 0;
		for (cl = list; cl; cl = cl->next) {
			struct commit_list *parents;
			struct commit_name *n;
			int nth;
			c = cl->item;
			if (!FUNC0(c))
				continue;
			n = FUNC0(c);
			parents = c->parents;
			nth = 0;
			while (parents) {
				struct commit *p = parents->item;
				struct strbuf newname = STRBUF_INIT;
				parents = parents->next;
				nth++;
				if (FUNC0(p))
					continue;
				switch (n->generation) {
				case 0:
					FUNC5(&newname, n->head_name);
					break;
				case 1:
					FUNC4(&newname, "%s^", n->head_name);
					break;
				default:
					FUNC4(&newname, "%s~%d",
						    n->head_name, n->generation);
					break;
				}
				if (nth == 1)
					FUNC3(&newname, '^');
				else
					FUNC4(&newname, "^%d", nth);
				FUNC1(p, FUNC6(&newname, NULL), 0);
				i++;
				FUNC2(p);
			}
		}
	} while (i);
}