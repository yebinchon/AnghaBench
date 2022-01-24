#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  sli4_t ;
struct TYPE_3__ {int /*<<< orphan*/  command; } ;
struct TYPE_4__ {int /*<<< orphan*/  cc; TYPE_1__ hdr; } ;
typedef  TYPE_2__ sli4_cmd_read_status_t ;
typedef  int int32_t ;

/* Variables and functions */
 int /*<<< orphan*/  SLI4_MBOX_COMMAND_READ_STATUS ; 
 int /*<<< orphan*/  FUNC0 (void*,int /*<<< orphan*/ ,size_t) ; 

int32_t
FUNC1(sli4_t *sli4, void *buf, size_t size,
			uint8_t clear_counters)
{
	sli4_cmd_read_status_t	*cmd = buf;

	FUNC0(buf, 0, size);

	cmd->hdr.command = SLI4_MBOX_COMMAND_READ_STATUS;
	cmd->cc = clear_counters;
	return sizeof(sli4_cmd_read_status_t);
}