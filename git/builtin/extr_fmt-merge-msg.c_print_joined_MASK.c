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
 int /*<<< orphan*/  FUNC0 (struct strbuf*,char*,char const*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct strbuf*,char const*) ; 

__attribute__((used)) static void FUNC2(const char *singular, const char *plural,
		struct string_list *list, struct strbuf *out)
{
	if (list->nr == 0)
		return;
	if (list->nr == 1) {
		FUNC0(out, "%s%s", singular, list->items[0].string);
	} else {
		int i;
		FUNC1(out, plural);
		for (i = 0; i < list->nr - 1; i++)
			FUNC0(out, "%s%s", i > 0 ? ", " : "",
				    list->items[i].string);
		FUNC0(out, " and %s", list->items[list->nr - 1].string);
	}
}