#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct strbuf {int /*<<< orphan*/  buf; } ;
struct object {unsigned int flags; } ;
struct commit_list {struct commit_list* next; TYPE_1__* item; } ;
struct commit_dist {int distance; TYPE_1__* commit; } ;
struct TYPE_2__ {struct object object; } ;

/* Variables and functions */
 int /*<<< orphan*/  DECORATION_NONE ; 
 int /*<<< orphan*/  FUNC0 (struct commit_dist*,int,int /*<<< orphan*/ ) ; 
 struct strbuf STRBUF_INIT ; 
 unsigned int TREESAME ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct object*) ; 
 int /*<<< orphan*/  compare_commit_dist ; 
 int /*<<< orphan*/  FUNC2 (struct commit_dist*) ; 
 int /*<<< orphan*/  FUNC3 (struct commit_list*) ; 
 int /*<<< orphan*/  FUNC4 (struct strbuf*,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC6 (struct strbuf*) ; 
 int FUNC7 (struct commit_list*) ; 
 struct commit_dist* FUNC8 (int,int) ; 

__attribute__((used)) static struct commit_list *FUNC9(struct commit_list *list, int nr)
{
	struct commit_list *p;
	struct commit_dist *array = FUNC8(nr, sizeof(*array));
	struct strbuf buf = STRBUF_INIT;
	int cnt, i;

	for (p = list, cnt = 0; p; p = p->next) {
		int distance;
		unsigned flags = p->item->object.flags;

		if (flags & TREESAME)
			continue;
		distance = FUNC7(p);
		if (nr - distance < distance)
			distance = nr - distance;
		array[cnt].commit = p->item;
		array[cnt].distance = distance;
		cnt++;
	}
	FUNC0(array, cnt, compare_commit_dist);
	for (p = list, i = 0; i < cnt; i++) {
		struct object *obj = &(array[i].commit->object);

		FUNC6(&buf);
		FUNC4(&buf, "dist=%d", array[i].distance);
		FUNC1(DECORATION_NONE, buf.buf, obj);

		p->item = array[i].commit;
		if (i < cnt - 1)
			p = p->next;
	}
	if (p) {
		FUNC3(p->next);
		p->next = NULL;
	}
	FUNC5(&buf);
	FUNC2(array);
	return list;
}