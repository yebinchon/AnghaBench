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
struct seq_file {int /*<<< orphan*/  private; } ;
struct gcov_node {scalar_t__ num_loaded; } ;
struct gcov_info {int dummy; } ;
struct file {struct seq_file* private_data; } ;
typedef  size_t ssize_t ;
typedef  int /*<<< orphan*/  off_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct gcov_info*) ; 
 int /*<<< orphan*/  FUNC1 (struct gcov_info*) ; 
 struct gcov_info* FUNC2 (int /*<<< orphan*/ ) ; 
 struct gcov_node* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  node_lock ; 
 int /*<<< orphan*/  FUNC6 (struct gcov_node*) ; 
 int /*<<< orphan*/  FUNC7 (struct gcov_node*) ; 

__attribute__((used)) static ssize_t
FUNC8(struct file *file, const char *addr, size_t len, off_t *pos)
{
	struct seq_file *seq;
	struct gcov_info *info;
	struct gcov_node *node;

	seq = file->private_data;
	info = FUNC2(seq->private);
	FUNC4(&node_lock);
	node = FUNC3(FUNC0(info));
	if (node) {
		/* Reset counts or remove node for unloaded modules. */
		if (node->num_loaded == 0)
			FUNC6(node);
		else
			FUNC7(node);
	}
	/* Reset counts for open file. */
	FUNC1(info);
	FUNC5(&node_lock);

	return (len);
}