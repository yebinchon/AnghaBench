#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  ocs_node_t ;
struct TYPE_7__ {TYPE_2__* header; } ;
typedef  TYPE_3__ ocs_hw_sequence_t ;
typedef  int int32_t ;
typedef  int /*<<< orphan*/  fc_header_t ;
struct TYPE_5__ {int /*<<< orphan*/ * virt; } ;
struct TYPE_6__ {TYPE_1__ dma; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

int32_t
FUNC2(ocs_node_t *node, ocs_hw_sequence_t *seq)
{
	fc_header_t *hdr = seq->header->dma.virt;

	FUNC0(node, "Dropping frame hdr = %08x %08x %08x %08x %08x %08x\n",
		    FUNC1(((uint32_t *)hdr)[0]),
		    FUNC1(((uint32_t *)hdr)[1]),
		    FUNC1(((uint32_t *)hdr)[2]),
		    FUNC1(((uint32_t *)hdr)[3]),
		    FUNC1(((uint32_t *)hdr)[4]),
		    FUNC1(((uint32_t *)hdr)[5]));

	return -1;
}