#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
struct TYPE_15__ {scalar_t__ enable_ini; int /*<<< orphan*/  instance_index; } ;
typedef  TYPE_1__ ocs_t ;
struct TYPE_16__ {int /*<<< orphan*/  els_rsp; int /*<<< orphan*/  els_req; scalar_t__ sgl_count; scalar_t__ sgl_allocated; int /*<<< orphan*/ * sgl; int /*<<< orphan*/  rspbuf; int /*<<< orphan*/  cmdbuf; TYPE_1__* ocs; scalar_t__ instance_index; scalar_t__ tag; } ;
typedef  TYPE_2__ ocs_io_t ;
struct TYPE_17__ {scalar_t__ io_num_ios; int /*<<< orphan*/  pool; int /*<<< orphan*/  lock; TYPE_1__* ocs; } ;
typedef  TYPE_3__ ocs_io_pool_t ;
typedef  int int32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  OCS_ELS_GID_PT_RSP_LEN ; 
 int /*<<< orphan*/  OCS_ELS_REQ_LEN ; 
 int /*<<< orphan*/  OCS_MIN_DMA_ALIGNMENT ; 
 int OCS_M_NOWAIT ; 
 int OCS_M_ZERO ; 
 int /*<<< orphan*/  SCSI_CMD_BUF_LENGTH ; 
 int /*<<< orphan*/  SCSI_RSP_BUF_LENGTH ; 
 int FUNC0 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*) ; 
 void* FUNC4 (TYPE_1__*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int,scalar_t__,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC6 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 

ocs_io_pool_t *
FUNC9(ocs_t *ocs, uint32_t num_io, uint32_t num_sgl)
{
	uint32_t i = 0;
	int32_t	rc = -1;
	ocs_io_pool_t *io_pool;

	/* Allocate the IO pool */
	io_pool = FUNC4(ocs, sizeof(*io_pool), OCS_M_ZERO | OCS_M_NOWAIT);
	if (io_pool == NULL) {
		FUNC3(ocs, "allocate of IO pool failed\n");
		return NULL;;
	}

	io_pool->ocs = ocs;
	io_pool->io_num_ios = num_io;

	/* initialize IO pool lock */
	FUNC2(ocs, &io_pool->lock, "io_pool lock[%d]", ocs->instance_index);

	io_pool->pool = FUNC5(ocs, sizeof(ocs_io_t), io_pool->io_num_ios, FALSE);

	for (i = 0; i < io_pool->io_num_ios; i++) {
		ocs_io_t *io = FUNC6(io_pool->pool, i);

		io->tag = i;
		io->instance_index = i;
		io->ocs = ocs;

		/* allocate a command/response dma buffer */
		if (ocs->enable_ini) {
			rc = FUNC0(ocs, &io->cmdbuf, SCSI_CMD_BUF_LENGTH, OCS_MIN_DMA_ALIGNMENT);
			if (rc) {
				FUNC3(ocs, "ocs_dma_alloc cmdbuf failed\n");
				FUNC1(io_pool);
				return NULL;
			}
		}

		/* Allocate a response buffer */
		rc = FUNC0(ocs, &io->rspbuf, SCSI_RSP_BUF_LENGTH, OCS_MIN_DMA_ALIGNMENT);
		if (rc) {
			FUNC3(ocs, "ocs_dma_alloc cmdbuf failed\n");
			FUNC1(io_pool);
			return NULL;
		}

		/* Allocate SGL */
		io->sgl = FUNC4(ocs, sizeof(*io->sgl) * num_sgl, OCS_M_NOWAIT | OCS_M_ZERO);
		if (io->sgl == NULL) {
			FUNC3(ocs, "malloc sgl's failed\n");
			FUNC1(io_pool);
			return NULL;
		}
		io->sgl_allocated = num_sgl;
		io->sgl_count = 0;

		/* Make IO backend call to initialize IO */
		FUNC8(io);
		FUNC7(io);
		
		rc = FUNC0(ocs, &io->els_req, OCS_ELS_REQ_LEN, OCS_MIN_DMA_ALIGNMENT);
		if (rc) {
			FUNC3(ocs, "ocs_dma_alloc els_req failed\n");
			FUNC1(io_pool);
			return NULL;
 		}

		rc = FUNC0(ocs, &io->els_rsp, OCS_ELS_GID_PT_RSP_LEN, OCS_MIN_DMA_ALIGNMENT);
		if (rc) {
			FUNC3(ocs, "ocs_dma_alloc els_rsp failed\n");
			FUNC1(io_pool);
			return NULL;
 		}
	}

	return io_pool;
}