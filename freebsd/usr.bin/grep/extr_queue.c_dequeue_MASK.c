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
struct qentry {int dummy; } ;

/* Variables and functions */
 struct qentry* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  count ; 
 int /*<<< orphan*/  list ; 
 int /*<<< orphan*/  queue ; 

__attribute__((used)) static struct qentry *
FUNC2(void)
{
	struct qentry *item;

	item = FUNC0(&queue);
	if (item == NULL)
		return (NULL);

	FUNC1(&queue, list);
	--count;
	return (item);
}