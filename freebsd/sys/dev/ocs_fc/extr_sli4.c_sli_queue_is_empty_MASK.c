#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_4__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  sli4_t ;
struct TYPE_6__ {int /*<<< orphan*/ * virt; } ;
struct TYPE_5__ {int index; int size; int /*<<< orphan*/  lock; TYPE_4__ dma; } ;
typedef  TYPE_1__ sli4_queue_t ;
typedef  int int32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  OCS_DMASYNC_POSTREAD ; 
 int TRUE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int32_t
FUNC4(sli4_t *sli4, sli4_queue_t *q)
{
	int32_t		rc = TRUE;
	uint8_t		*qe = q->dma.virt;

	FUNC1(&q->lock);

	FUNC0(&q->dma, OCS_DMASYNC_POSTREAD);

	qe += q->index * q->size;

	rc = !FUNC3(q, qe, FALSE);

	FUNC2(&q->lock);

	return rc;
}