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
struct fuse_ticket {scalar_t__ tk_unique; int /*<<< orphan*/  tk_refcount; scalar_t__ irq_unique; struct fuse_data* tk_data; } ;
struct fuse_data {int /*<<< orphan*/  ticketer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct fuse_ticket*) ; 
 int /*<<< orphan*/  FUNC1 (struct fuse_ticket*) ; 
 void* FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct fuse_ticket*) ; 
 int /*<<< orphan*/  fuse_ticket_count ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int
FUNC6(void *mem, int size, void *arg, int flags)
{
	struct fuse_ticket *ftick = mem;
	struct fuse_data *data = arg;

	FUNC1(ftick);
	FUNC0(ftick);

	ftick->tk_data = data;

	if (ftick->tk_unique != 0)
		FUNC4(ftick);

	/* May be truncated to 32 bits */
	ftick->tk_unique = FUNC2(&data->ticketer, 1);
	if (ftick->tk_unique == 0)
		ftick->tk_unique = FUNC2(&data->ticketer, 1);

	ftick->irq_unique = 0;

	FUNC5(&ftick->tk_refcount, 1);
	FUNC3(fuse_ticket_count, 1);

	return 0;
}