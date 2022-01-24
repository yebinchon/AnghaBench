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
struct bufobj {int dummy; } ;
struct buf {int dummy; } ;
typedef  int /*<<< orphan*/  daddr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bufobj*) ; 
 int /*<<< orphan*/  FUNC1 (struct bufobj*) ; 
 struct buf* FUNC2 (struct bufobj*,int /*<<< orphan*/ ) ; 

struct buf *
FUNC3(struct bufobj *bo, daddr_t blkno)
{
	struct buf *bp;

	FUNC0(bo);
	bp = FUNC2(bo, blkno);
	FUNC1(bo);
	return (bp);
}