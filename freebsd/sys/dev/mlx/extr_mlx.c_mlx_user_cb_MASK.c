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
struct mlx_usercommand {int mu_bufptr; scalar_t__ mu_datasize; } ;
struct mlx_dcdb {int dcdb_physaddr; } ;
struct mlx_command {int* mc_mailbox; int mc_dataphys; scalar_t__ mc_data; scalar_t__ mc_private; } ;
typedef  int /*<<< orphan*/  bus_dma_segment_t ;

/* Variables and functions */
 int MLX_CMD_DIRECT_CDB ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct mlx_command*,int /*<<< orphan*/ *,int,int) ; 
 scalar_t__ FUNC2 (struct mlx_command*) ; 

void
FUNC3(void *arg, bus_dma_segment_t *segs, int nsegments, int error)
{
    struct mlx_usercommand *mu;
    struct mlx_command *mc;
    struct mlx_dcdb	*dcdb;

    mc = (struct mlx_command *)arg;
    if (error)
	return;

    FUNC1(mc, segs, nsegments, error);

    mu = (struct mlx_usercommand *)mc->mc_private;
    dcdb = NULL;

    /* 
     * If this is a passthrough SCSI command, the DCDB is packed at the 
     * beginning of the data area.  Fix up the DCDB to point to the correct
     * physical address and override any bufptr supplied by the caller since
     * we know what it's meant to be.
     */
    if (mc->mc_mailbox[0] == MLX_CMD_DIRECT_CDB) {
	dcdb = (struct mlx_dcdb *)mc->mc_data;
	dcdb->dcdb_physaddr = mc->mc_dataphys + sizeof(*dcdb);
	mu->mu_bufptr = 8;
    }
    
    /* 
     * If there's a data buffer, fix up the command's buffer pointer.
     */
    if (mu->mu_datasize > 0) {
	mc->mc_mailbox[mu->mu_bufptr    ] =  mc->mc_dataphys        & 0xff;
	mc->mc_mailbox[mu->mu_bufptr + 1] = (mc->mc_dataphys >> 8)  & 0xff;
	mc->mc_mailbox[mu->mu_bufptr + 2] = (mc->mc_dataphys >> 16) & 0xff;
	mc->mc_mailbox[mu->mu_bufptr + 3] = (mc->mc_dataphys >> 24) & 0xff;
    }
    FUNC0(0, "command fixup");

    /* submit the command and wait */
    if (FUNC2(mc) != 0)
	return;

}