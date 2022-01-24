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
struct fuse_ticket {int /*<<< orphan*/  tk_aw_mtx; int /*<<< orphan*/  tk_aw_fiov; int /*<<< orphan*/  tk_ms_fiov; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC2(void *mem, int size)
{
	struct fuse_ticket *ftick = mem;

	FUNC0(&ftick->tk_ms_fiov);
	FUNC0(&ftick->tk_aw_fiov);
	FUNC1(&ftick->tk_aw_mtx);
}