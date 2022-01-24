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
struct queue_pair_list {int dummy; } ;
struct queue_pair_entry {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  list_item ; 
 int /*<<< orphan*/  FUNC0 (struct queue_pair_entry*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC1(struct queue_pair_list *qp_list,
    struct queue_pair_entry *entry)
{

	if (entry)
		FUNC0(entry, list_item);
}