#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_5__ {int /*<<< orphan*/  os; } ;
typedef  TYPE_1__ sli4_t ;
struct TYPE_6__ {int /*<<< orphan*/  lock; scalar_t__ n_posted; int /*<<< orphan*/  doorbell_offset; int /*<<< orphan*/  doorbell_rset; int /*<<< orphan*/  id; } ;
typedef  TYPE_2__ sli4_queue_t ;
typedef  int /*<<< orphan*/  int32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int32_t
FUNC4(sli4_t *sli4, sli4_queue_t *q, uint8_t arm)
{
	uint32_t	val = 0;

	FUNC0(&q->lock);
		val = FUNC3(q->n_posted, q->id, arm);
		FUNC1(sli4->os, q->doorbell_rset, q->doorbell_offset, val);
		q->n_posted = 0;
	FUNC2(&q->lock);

	return 0;
}