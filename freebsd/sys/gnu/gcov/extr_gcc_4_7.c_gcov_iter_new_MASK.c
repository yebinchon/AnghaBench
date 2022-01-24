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
struct gcov_iterator {int size; int /*<<< orphan*/ * buffer; struct gcov_info* info; } ;
struct gcov_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_GCOV ; 
 int M_NOWAIT ; 
 int M_ZERO ; 
 int FUNC0 (int /*<<< orphan*/ *,struct gcov_info*) ; 
 int /*<<< orphan*/  FUNC1 (struct gcov_iterator*,int /*<<< orphan*/ ) ; 
 void* FUNC2 (int,int /*<<< orphan*/ ,int) ; 

struct gcov_iterator *
FUNC3(struct gcov_info *info)
{
	struct gcov_iterator *iter;

	iter = FUNC2(sizeof(struct gcov_iterator), M_GCOV, M_NOWAIT|M_ZERO);
	if (iter == NULL)
		goto err_free;

	iter->info = info;
	/* Dry-run to get the actual buffer size. */
	iter->size = FUNC0(NULL, info);
	iter->buffer = FUNC2(iter->size, M_GCOV, M_NOWAIT);
	if (!iter->buffer)
		goto err_free;

	FUNC0(iter->buffer, info);

	return iter;

err_free:
	FUNC1(iter, M_GCOV);
	return (NULL);
}