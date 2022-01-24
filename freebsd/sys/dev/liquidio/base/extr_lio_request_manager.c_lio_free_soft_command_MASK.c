#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  alloc_buf_count; int /*<<< orphan*/  head; } ;
struct octeon_device {TYPE_1__ sc_buf_pool; } ;
struct lio_soft_command {int /*<<< orphan*/  node; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  entries ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void
FUNC4(struct octeon_device *oct,
		      struct lio_soft_command *sc)
{

	FUNC2(&oct->sc_buf_pool.lock);

	FUNC0(&oct->sc_buf_pool.head, &sc->node, entries);

	FUNC1(&oct->sc_buf_pool.alloc_buf_count, 1);

	FUNC3(&oct->sc_buf_pool.lock);
}