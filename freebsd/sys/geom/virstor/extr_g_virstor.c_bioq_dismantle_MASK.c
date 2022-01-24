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
struct bio_queue_head {int dummy; } ;
struct bio {int dummy; } ;

/* Variables and functions */
 struct bio* FUNC0 (struct bio_queue_head*) ; 
 int /*<<< orphan*/  FUNC1 (struct bio_queue_head*,struct bio*) ; 
 int /*<<< orphan*/  FUNC2 (struct bio*) ; 

__attribute__((used)) static void
FUNC3(struct bio_queue_head *bq)
{
	struct bio *b;

	for (b = FUNC0(bq); b != NULL; b = FUNC0(bq)) {
		FUNC1(bq, b);
		FUNC2(b);
	}
}