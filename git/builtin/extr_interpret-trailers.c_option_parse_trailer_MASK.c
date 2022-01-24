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
struct option {struct list_head* value; } ;
struct new_trailer_item {char const* text; int /*<<< orphan*/  list; int /*<<< orphan*/  if_missing; int /*<<< orphan*/  if_exists; int /*<<< orphan*/  where; } ;
struct list_head {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  if_exists ; 
 int /*<<< orphan*/  if_missing ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct list_head*) ; 
 int /*<<< orphan*/  FUNC1 (struct list_head*) ; 
 int /*<<< orphan*/  where ; 
 struct new_trailer_item* FUNC2 (int) ; 

__attribute__((used)) static int FUNC3(const struct option *opt,
				   const char *arg, int unset)
{
	struct list_head *trailers = opt->value;
	struct new_trailer_item *item;

	if (unset) {
		FUNC1(trailers);
		return 0;
	}

	if (!arg)
		return -1;

	item = FUNC2(sizeof(*item));
	item->text = arg;
	item->where = where;
	item->if_exists = if_exists;
	item->if_missing = if_missing;
	FUNC0(&item->list, trailers);
	return 0;
}