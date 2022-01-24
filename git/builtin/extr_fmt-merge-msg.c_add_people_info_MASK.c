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
struct string_list {int /*<<< orphan*/  nr; int /*<<< orphan*/  items; } ;
struct strbuf {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cmp_string_list_util_as_integral ; 
 int /*<<< orphan*/  FUNC1 (struct strbuf*,struct string_list*,char) ; 

__attribute__((used)) static void FUNC2(struct strbuf *out,
			    struct string_list *authors,
			    struct string_list *committers)
{
	FUNC0(authors->items, authors->nr,
	      cmp_string_list_util_as_integral);
	FUNC0(committers->items, committers->nr,
	      cmp_string_list_util_as_integral);

	FUNC1(out, authors, 'a');
	FUNC1(out, committers, 'c');
}