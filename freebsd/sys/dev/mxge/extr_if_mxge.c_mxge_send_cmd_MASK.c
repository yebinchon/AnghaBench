#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_6__ ;
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct TYPE_11__ {int /*<<< orphan*/  map; int /*<<< orphan*/  dmat; int /*<<< orphan*/  bus_addr; } ;
struct TYPE_12__ {char* sram; int /*<<< orphan*/  cmd_mtx; int /*<<< orphan*/  dev; TYPE_2__ cmd_dma; TYPE_6__* cmd; } ;
typedef  TYPE_3__ mxge_softc_t ;
struct TYPE_13__ {int data0; int data1; int data2; } ;
typedef  TYPE_4__ mxge_cmd_t ;
struct TYPE_10__ {void* high; void* low; } ;
struct TYPE_14__ {TYPE_1__ response_addr; void* cmd; void* data2; void* data1; void* data0; } ;
typedef  TYPE_5__ mcp_cmd_t ;
struct TYPE_15__ {int result; int data; } ;
typedef  TYPE_6__ mcp_cmd_response_t ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_DMASYNC_POSTREAD ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int E2BIG ; 
 int EAGAIN ; 
 int EBUSY ; 
 int ENOSYS ; 
 int ENXIO ; 
#define  MXGEFW_CMD_ERROR_BUSY 131 
#define  MXGEFW_CMD_ERROR_I2C_ABSENT 130 
#define  MXGEFW_CMD_ERROR_UNALIGNED 129 
#define  MXGEFW_CMD_UNKNOWN 128 
 int MXGEFW_ETH_CMD ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int,int) ; 
 void* FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (void volatile*,TYPE_5__*,int) ; 
 int /*<<< orphan*/  FUNC10 () ; 

__attribute__((used)) static int
FUNC11(mxge_softc_t *sc, uint32_t cmd, mxge_cmd_t *data)
{
	mcp_cmd_t *buf;
	char buf_bytes[sizeof(*buf) + 8];
	volatile mcp_cmd_response_t *response = sc->cmd;
	volatile char *cmd_addr = sc->sram + MXGEFW_ETH_CMD;
	uint32_t dma_low, dma_high;
	int err, sleep_total = 0;

	/* ensure buf is aligned to 8 bytes */
	buf = (mcp_cmd_t *)((unsigned long)(buf_bytes + 7) & ~7UL);

	buf->data0 = FUNC6(data->data0);
	buf->data1 = FUNC6(data->data1);
	buf->data2 = FUNC6(data->data2);
	buf->cmd = FUNC6(cmd);
	dma_low = FUNC2(sc->cmd_dma.bus_addr);
	dma_high = FUNC1(sc->cmd_dma.bus_addr);

	buf->response_addr.low = FUNC6(dma_low);
	buf->response_addr.high = FUNC6(dma_high);
	FUNC7(&sc->cmd_mtx);
	response->result = 0xffffffff;
	FUNC10();
	FUNC9((volatile void *)cmd_addr, buf, sizeof (*buf));

	/* wait up to 20ms */
	err = EAGAIN;
	for (sleep_total = 0; sleep_total <  20; sleep_total++) {
		FUNC4(sc->cmd_dma.dmat,
				sc->cmd_dma.map, BUS_DMASYNC_POSTREAD);
		FUNC10();
		switch (FUNC3(response->result)) {
		case 0:
			data->data0 = FUNC3(response->data);
			err = 0;
			break;
		case 0xffffffff:
			FUNC0(1000);
			break;
		case MXGEFW_CMD_UNKNOWN:
			err = ENOSYS;
			break;
		case MXGEFW_CMD_ERROR_UNALIGNED:
			err = E2BIG;
			break;
		case MXGEFW_CMD_ERROR_BUSY:
			err = EBUSY;
			break;
		case MXGEFW_CMD_ERROR_I2C_ABSENT:
			err = ENXIO;
			break;
		default:
			FUNC5(sc->dev,
				      "mxge: command %d "
				      "failed, result = %d\n",
				      cmd, FUNC3(response->result));
			err = ENXIO;
			break;
		}
		if (err != EAGAIN)
			break;
	}
	if (err == EAGAIN)
		FUNC5(sc->dev, "mxge: command %d timed out"
			      "result = %d\n",
			      cmd, FUNC3(response->result));
	FUNC8(&sc->cmd_mtx);
	return err;
}