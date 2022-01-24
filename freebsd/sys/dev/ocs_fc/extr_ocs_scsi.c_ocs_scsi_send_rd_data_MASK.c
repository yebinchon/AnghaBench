#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  ocs_scsi_sgl_t ;
typedef  int /*<<< orphan*/  ocs_scsi_io_cb_t ;
typedef  int /*<<< orphan*/  ocs_scsi_dif_info_t ;
struct TYPE_4__ {int /*<<< orphan*/  ocs; } ;
typedef  TYPE_1__ ocs_io_t ;
typedef  int /*<<< orphan*/  int32_t ;

/* Variables and functions */
 int /*<<< orphan*/  OCS_HW_IO_TARGET_READ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ; 

int32_t
FUNC2(ocs_io_t *io, uint32_t flags,
	ocs_scsi_dif_info_t *dif_info,
	ocs_scsi_sgl_t *sgl, uint32_t sgl_count, uint32_t len,
	ocs_scsi_io_cb_t cb, void *arg)
{
	return FUNC1(io, flags, dif_info, sgl, sgl_count, len, OCS_HW_IO_TARGET_READ,
				  FUNC0(io->ocs), cb, arg);
}