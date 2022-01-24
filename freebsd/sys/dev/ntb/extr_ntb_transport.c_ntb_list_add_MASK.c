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
 int /*<<< orphan*/  FUNC0 (struct ntb_queue_list*,struct ntb_queue_entry*,struct ntb_queue_entry*) ; 
 int /*<<< orphan*/  FUNC1 (struct mtx*) ; 
 int /*<<< orphan*/  FUNC2 (struct mtx*) ; 

__attribute__((used)) static void
FUNC3(struct mtx *lock, struct ntb_queue_entry *entry,
    struct ntb_queue_list *list)
{

	FUNC1(lock);
	FUNC0(list, entry, entry);
	FUNC2(lock);
}