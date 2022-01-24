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
struct bufqueue {int dummy; } ;
struct buf {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bufqueue*) ; 
 int /*<<< orphan*/  FUNC1 (struct bufqueue*,struct buf*) ; 
 struct bufqueue* FUNC2 (struct buf*) ; 

void
FUNC3(struct buf *bp)
{
	struct bufqueue *bq;

	bq = FUNC2(bp);
	FUNC1(bq, bp);
	FUNC0(bq);
}