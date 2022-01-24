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
struct deadq_entry {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct deadq_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  deadq_head ; 
 int /*<<< orphan*/  dq_entries ; 
 int /*<<< orphan*/  FUNC1 (struct deadq_entry*) ; 

__attribute__((used)) static int
FUNC2(struct deadq_entry *dq)
{
	if (dq != NULL) {
		FUNC0(&deadq_head, dq, dq_entries);
		FUNC1(dq);
		return (1);
	}

	return (0);
}