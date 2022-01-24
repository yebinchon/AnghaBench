#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  sli4_t ;
struct TYPE_5__ {int /*<<< orphan*/ * virt; } ;
struct TYPE_4__ {int length; int size; TYPE_2__ dma; } ;
typedef  TYPE_1__ sli4_queue_t ;
typedef  int int32_t ;

/* Variables and functions */
 int /*<<< orphan*/  OCS_DMASYNC_PREWRITE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

int32_t
FUNC2(sli4_t *sli4, sli4_queue_t *q, uint32_t index, uint8_t *entry)
{
	int32_t		rc = 0;
	uint8_t		*qe = q->dma.virt;

	if (index >= q->length) {
		return -1;
	}

	qe += index * q->size;

	if (entry) {
		FUNC1(qe, entry, q->size);
	}

	FUNC0(&q->dma, OCS_DMASYNC_PREWRITE);

	return rc;
}