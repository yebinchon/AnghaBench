#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct buf {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  bq_queue; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 struct buf* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,struct buf*) ; 
 TYPE_1__ bqempty ; 

__attribute__((used)) static int
FUNC4(void *arg, void **store, int cnt, int domain, int flags)
{
	struct buf *bp;
	int i;

	FUNC0(&bqempty);
	for (i = 0; i < cnt; i++) {
		bp = FUNC2(&bqempty.bq_queue);
		if (bp == NULL)
			break;
		FUNC3(&bqempty, bp);
		store[i] = bp;
	}
	FUNC1(&bqempty);

	return (i);
}