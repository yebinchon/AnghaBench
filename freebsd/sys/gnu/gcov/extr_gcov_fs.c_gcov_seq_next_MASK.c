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
struct seq_file {int dummy; } ;
typedef  void gcov_iterator ;
typedef  int /*<<< orphan*/  off_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (void*) ; 

__attribute__((used)) static void *
FUNC1(struct seq_file *seq, void *data, off_t *pos)
{
	struct gcov_iterator *iter = data;

	if (FUNC0(iter))
		return NULL;
	(*pos)++;

	return iter;
}