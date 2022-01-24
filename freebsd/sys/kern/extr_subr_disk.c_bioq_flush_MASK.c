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
struct devstat {int dummy; } ;
struct bio_queue_head {int dummy; } ;
struct bio {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bio*,struct devstat*,int) ; 
 struct bio* FUNC1 (struct bio_queue_head*) ; 

void
FUNC2(struct bio_queue_head *head, struct devstat *stp, int error)
{
	struct bio *bp;

	while ((bp = FUNC1(head)) != NULL)
		FUNC0(bp, stp, error);
}