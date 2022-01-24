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
struct ntb_queue_list {int dummy; } ;
struct ntb_queue_entry {int dummy; } ;
struct mtx {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct ntb_queue_list*) ; 
 struct ntb_queue_entry* FUNC1 (struct ntb_queue_list*) ; 
 int /*<<< orphan*/  FUNC2 (struct ntb_queue_list*,struct ntb_queue_entry*,struct ntb_queue_entry*) ; 
 int /*<<< orphan*/  FUNC3 (struct ntb_queue_list*,struct ntb_queue_entry*) ; 
 int /*<<< orphan*/  FUNC4 (struct mtx*) ; 
 int /*<<< orphan*/  FUNC5 (struct mtx*) ; 

__attribute__((used)) static struct ntb_queue_entry *
FUNC6(struct mtx *lock, struct ntb_queue_list *from,
    struct ntb_queue_list *to)
{
	struct ntb_queue_entry *entry;

	FUNC4(lock);
	if (FUNC0(from)) {
		entry = NULL;
		goto out;
	}
	entry = FUNC1(from);
	FUNC3(from, entry);
	FUNC2(to, entry, entry);

out:
	FUNC5(lock);
	return (entry);
}