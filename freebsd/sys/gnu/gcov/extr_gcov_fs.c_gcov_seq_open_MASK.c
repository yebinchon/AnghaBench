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
struct seq_file {struct gcov_iterator* private; } ;
struct inode {struct gcov_node* i_private; } ;
struct gcov_node {int dummy; } ;
struct gcov_iterator {int dummy; } ;
struct gcov_info {int dummy; } ;
struct file {struct seq_file* private_data; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (struct gcov_info*) ; 
 int /*<<< orphan*/  FUNC1 (struct gcov_iterator*) ; 
 struct gcov_iterator* FUNC2 (struct gcov_info*) ; 
 int /*<<< orphan*/  gcov_seq_ops ; 
 struct gcov_info* FUNC3 (struct gcov_node*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  node_lock ; 
 int FUNC6 (struct file*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC7(struct inode *inode, struct file *file)
{
	struct gcov_node *node = inode->i_private;
	struct gcov_iterator *iter;
	struct seq_file *seq;
	struct gcov_info *info;
	int rc = -ENOMEM;

	FUNC4(&node_lock);
	/*
	 * Read from a profiling data copy to minimize reference tracking
	 * complexity and concurrent access and to keep accumulating multiple
	 * profiling data sets associated with one node simple.
	 */
	info = FUNC3(node);
	if (info == NULL)
		goto out_unlock;
	iter = FUNC2(info);
	if (iter == NULL)
		goto err_free_info;
	rc = FUNC6(file, &gcov_seq_ops);
	if (rc)
		goto err_free_iter_info;
	seq = file->private_data;
	seq->private = iter;
out_unlock:
	FUNC5(&node_lock);
	return (rc);

err_free_iter_info:
	FUNC1(iter);
err_free_info:
	FUNC0(info);
	goto out_unlock;
}