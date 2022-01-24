#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_9__ ;
typedef  struct TYPE_17__   TYPE_8__ ;
typedef  struct TYPE_16__   TYPE_7__ ;
typedef  struct TYPE_15__   TYPE_6__ ;
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
typedef  scalar_t__ uint32_t ;
struct TYPE_17__ {char* name; char* serial_number; int /*<<< orphan*/  minor; int /*<<< orphan*/  major; } ;
struct TYPE_16__ {int /*<<< orphan*/  pkind; scalar_t__ app_mode; } ;
struct TYPE_10__ {scalar_t__ max_nic_ports; scalar_t__ app_mode; int /*<<< orphan*/  app_cap_flags; scalar_t__ num_gmx_ports; } ;
struct octeon_device {scalar_t__ num_iqs; size_t octeon_id; TYPE_8__ boardinfo; int /*<<< orphan*/  status; TYPE_7__ pfvf_hsword; TYPE_6__** instr_queue; TYPE_1__ fw_info; scalar_t__ app_mode; } ;
struct TYPE_11__ {scalar_t__ app_mode; int /*<<< orphan*/  pkind; int /*<<< orphan*/  app_cap_flags; scalar_t__ num_gmx_ports; scalar_t__ max_nic_ports; } ;
struct TYPE_12__ {TYPE_2__ r_core_drv_init; } ;
struct lio_recv_pkt {scalar_t__* buffer_size; scalar_t__ buffer_count; TYPE_9__** buffer_ptr; TYPE_3__ rh; } ;
struct lio_recv_info {struct lio_recv_pkt* recv_pkt; } ;
struct lio_core_setup {scalar_t__ corefreq; int /*<<< orphan*/  board_rev_minor; int /*<<< orphan*/  board_rev_major; int /*<<< orphan*/  board_serial_number; int /*<<< orphan*/  boardname; } ;
typedef  int /*<<< orphan*/  app_name ;
struct TYPE_18__ {scalar_t__ m_data; } ;
struct TYPE_13__ {int /*<<< orphan*/  pkind; } ;
struct TYPE_14__ {TYPE_4__ s; } ;
struct TYPE_15__ {TYPE_5__ txpciq; } ;

/* Variables and functions */
 int LIO_BOARD_NAME ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct octeon_device*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct octeon_device*) ; 
 int /*<<< orphan*/  LIO_DEV_CORE_OK ; 
 scalar_t__ LIO_DEV_RUNNING ; 
 scalar_t__ LIO_DROQ_INFO_SIZE ; 
 scalar_t__ LIO_DRV_NIC_APP ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int LIO_SERIAL_NUM_LEN ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cn23xx_pf ; 
 struct lio_core_setup* core_setup ; 
 int /*<<< orphan*/  FUNC6 (struct octeon_device*,char*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (struct octeon_device*,char*,scalar_t__,...) ; 
 int /*<<< orphan*/  FUNC8 (struct octeon_device*,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct lio_recv_info*) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_9__*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC13 (struct lio_core_setup*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC14 (char*,int /*<<< orphan*/ ,int) ; 

int
FUNC15(struct lio_recv_info *recv_info, void *buf)
{
	struct octeon_device	*oct = (struct octeon_device *)buf;
	struct lio_recv_pkt	*recv_pkt = recv_info->recv_pkt;
	struct lio_core_setup	*cs = NULL;
	uint32_t	i;
	uint32_t	num_nic_ports = 0;
	char		app_name[16];

	if (FUNC2(oct))
		num_nic_ports = FUNC3(
					       FUNC1(oct, cn23xx_pf));

	if (FUNC4(&oct->status) >= LIO_DEV_RUNNING) {
		FUNC7(oct, "Received CORE OK when device state is 0x%x\n",
			    FUNC4(&oct->status));
		goto core_drv_init_err;
	}

	FUNC14(app_name,
		FUNC10((uint32_t)
				   recv_pkt->rh.r_core_drv_init.app_mode),
		sizeof(app_name) - 1);
	oct->app_mode = (uint32_t)recv_pkt->rh.r_core_drv_init.app_mode;
	if (recv_pkt->rh.r_core_drv_init.app_mode == LIO_DRV_NIC_APP) {
		oct->fw_info.max_nic_ports =
		    (uint32_t)recv_pkt->rh.r_core_drv_init.max_nic_ports;
		oct->fw_info.num_gmx_ports =
		    (uint32_t)recv_pkt->rh.r_core_drv_init.num_gmx_ports;
	}

	if (oct->fw_info.max_nic_ports < num_nic_ports) {
		FUNC7(oct, "Config has more ports than firmware allows (%d > %d).\n",
			    num_nic_ports, oct->fw_info.max_nic_ports);
		goto core_drv_init_err;
	}

	oct->fw_info.app_cap_flags = recv_pkt->rh.r_core_drv_init.app_cap_flags;
	oct->fw_info.app_mode = (uint32_t)recv_pkt->rh.r_core_drv_init.app_mode;
	oct->pfvf_hsword.app_mode =
	    (uint32_t)recv_pkt->rh.r_core_drv_init.app_mode;

	oct->pfvf_hsword.pkind = recv_pkt->rh.r_core_drv_init.pkind;

	for (i = 0; i < oct->num_iqs; i++)
		oct->instr_queue[i]->txpciq.s.pkind = oct->pfvf_hsword.pkind;

	FUNC5(&oct->status, LIO_DEV_CORE_OK);

	cs = &core_setup[oct->octeon_id];

	if (recv_pkt->buffer_size[0] != (sizeof(*cs) + LIO_DROQ_INFO_SIZE)) {
		FUNC6(oct, "Core setup bytes expected %llu found %d\n",
			    FUNC0(sizeof(*cs) + LIO_DROQ_INFO_SIZE),
			    recv_pkt->buffer_size[0]);
	}

	FUNC13(cs, recv_pkt->buffer_ptr[0]->m_data + LIO_DROQ_INFO_SIZE,
	       sizeof(*cs));
	FUNC14(oct->boardinfo.name, cs->boardname, LIO_BOARD_NAME);
	FUNC14(oct->boardinfo.serial_number, cs->board_serial_number,
		LIO_SERIAL_NUM_LEN);

	FUNC12((uint64_t *)cs, (sizeof(*cs) >> 3));

	oct->boardinfo.major = cs->board_rev_major;
	oct->boardinfo.minor = cs->board_rev_minor;

	FUNC8(oct, "Running %s (%llu Hz)\n", app_name,
		     FUNC0(cs->corefreq));

core_drv_init_err:
	for (i = 0; i < recv_pkt->buffer_count; i++)
		FUNC11(recv_pkt->buffer_ptr[i]);

	FUNC9(recv_info);
	return (0);
}