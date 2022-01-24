#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  uint16_t ;
typedef  int /*<<< orphan*/  ocs_io_t ;
struct TYPE_3__ {int /*<<< orphan*/  d_id; int /*<<< orphan*/  rx_id; int /*<<< orphan*/  ox_id; } ;
typedef  TYPE_1__ fc_header_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

ocs_io_t *
FUNC3(ocs_io_t *io, fc_header_t *hdr)
{
	uint16_t ox_id = FUNC1(hdr->ox_id);
	uint16_t rx_id = FUNC1(hdr->rx_id);
	uint32_t d_id = FUNC0(hdr->d_id);

	return FUNC2(io, d_id, ox_id, rx_id);
}