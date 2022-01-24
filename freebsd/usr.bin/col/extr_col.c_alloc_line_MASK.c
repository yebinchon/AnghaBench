#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {struct TYPE_6__* l_next; } ;
typedef  TYPE_1__ LINE ;

/* Variables and functions */
 int NALLOC ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *) ; 
 TYPE_1__* line_freelist ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static LINE *
FUNC3(void)
{
	LINE *l;
	int i;

	if (!line_freelist) {
		if ((l = FUNC2(NULL, sizeof(LINE) * NALLOC)) == NULL)
			FUNC0(1, NULL);
		line_freelist = l;
		for (i = 1; i < NALLOC; i++, l++)
			l->l_next = l + 1;
		l->l_next = NULL;
	}
	l = line_freelist;
	line_freelist = l->l_next;

	FUNC1(l, 0, sizeof(LINE));
	return (l);
}