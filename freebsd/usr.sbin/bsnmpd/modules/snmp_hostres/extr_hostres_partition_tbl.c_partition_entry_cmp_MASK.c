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
struct partition_entry {scalar_t__* index; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC1(const struct partition_entry *a,
    const struct partition_entry *b)
{
	FUNC0(a != NULL);
	FUNC0(b != NULL);

	if (a->index[0] < b->index[0])
		return (-1);

	if (a->index[0] > b->index[0])
		return (+1);

	if (a->index[1] < b->index[1])
		return (-1);

	if (a->index[1] > b->index[1])
		return (+1);

	return (0);
}