#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  uint16_t ;
struct TYPE_7__ {scalar_t__ port_type; } ;
typedef  TYPE_2__ sli4_t ;
struct TYPE_6__ {int request_length; int /*<<< orphan*/  subsystem; int /*<<< orphan*/  opcode; } ;
struct TYPE_8__ {int /*<<< orphan*/  resource_type; TYPE_1__ hdr; } ;
typedef  TYPE_3__ sli4_req_common_get_resource_extent_info_t ;
typedef  int int32_t ;

/* Variables and functions */
 int /*<<< orphan*/  SLI4_OPC_COMMON_GET_RESOURCE_EXTENT_INFO ; 
 scalar_t__ SLI4_PORT_TYPE_FC ; 
 int /*<<< orphan*/  SLI4_SUBSYSTEM_COMMON ; 
 int FUNC0 (TYPE_2__*,void*,size_t,int,int /*<<< orphan*/ *) ; 

int32_t
FUNC1(sli4_t *sli4, void *buf, size_t size, uint16_t rtype)
{
	sli4_req_common_get_resource_extent_info_t *extent = NULL;
	uint32_t	sli_config_off = 0;

	if (SLI4_PORT_TYPE_FC == sli4->port_type) {
		sli_config_off = FUNC0(sli4, buf, size,
				sizeof(sli4_req_common_get_resource_extent_info_t),
				NULL);
	}

	extent = (sli4_req_common_get_resource_extent_info_t *)((uint8_t *)buf + sli_config_off);

	extent->hdr.opcode = SLI4_OPC_COMMON_GET_RESOURCE_EXTENT_INFO;
	extent->hdr.subsystem = SLI4_SUBSYSTEM_COMMON;
	extent->hdr.request_length = 4;

	extent->resource_type = rtype;

	return(sli_config_off + sizeof(sli4_req_common_get_resource_extent_info_t));
}