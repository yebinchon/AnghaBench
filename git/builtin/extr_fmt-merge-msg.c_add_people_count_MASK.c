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
struct string_list {int nr; TYPE_1__* items; } ;
struct strbuf {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  string; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct strbuf*,char*,int /*<<< orphan*/ ,int,...) ; 
 int /*<<< orphan*/  FUNC1 (struct strbuf*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC3(struct strbuf *out, struct string_list *people)
{
	if (people->nr == 1)
		FUNC1(out, people->items[0].string);
	else if (people->nr == 2)
		FUNC0(out, "%s (%d) and %s (%d)",
			    people->items[0].string,
			    (int)FUNC2(&people->items[0]),
			    people->items[1].string,
			    (int)FUNC2(&people->items[1]));
	else if (people->nr)
		FUNC0(out, "%s (%d) and others",
			    people->items[0].string,
			    (int)FUNC2(&people->items[0]));
}