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
typedef  int /*<<< orphan*/  uint32_t ;
struct upgt_softc {int /*<<< orphan*/  sc_dev; int /*<<< orphan*/  sc_mtx; scalar_t__ sc_memaddr_frame_start; } ;
struct upgt_lmac_mem {int /*<<< orphan*/  chksum; void* addr; } ;
struct upgt_lmac_header {int dummy; } ;
struct TYPE_4__ {scalar_t__ flags; void* type; void* reqid; } ;
struct TYPE_3__ {void* len; int /*<<< orphan*/  type; scalar_t__ flags; } ;
struct upgt_lmac_eeprom {void* len; void* offset; TYPE_2__ header2; TYPE_1__ header1; } ;
struct upgt_data {int buflen; scalar_t__ buf; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct upgt_softc*,int /*<<< orphan*/ ,char*,int,int) ; 
 int EIO ; 
 int ENOBUFS ; 
 int /*<<< orphan*/  MCLBYTES ; 
 int /*<<< orphan*/  UPGT_DEBUG_FW ; 
 int UPGT_EEPROM_BLOCK_SIZE ; 
 int UPGT_EEPROM_SIZE ; 
 int /*<<< orphan*/  UPGT_H1_TYPE_CTRL ; 
 int UPGT_H2_TYPE_EEPROM ; 
 int /*<<< orphan*/  FUNC1 (struct upgt_softc*) ; 
 scalar_t__ UPGT_MEMSIZE_FRAME_HEAD ; 
 int /*<<< orphan*/  FUNC2 (struct upgt_softc*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 void* FUNC4 (int) ; 
 void* FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  hz ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct upgt_softc*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct upgt_softc*,struct upgt_data*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int) ; 
 struct upgt_data* FUNC10 (struct upgt_softc*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int
FUNC12(struct upgt_softc *sc)
{
	struct upgt_data *data_cmd;
	struct upgt_lmac_mem *mem;
	struct upgt_lmac_eeprom	*eeprom;
	int block, error, offset;

	FUNC1(sc);
	FUNC11(&sc->sc_mtx, 100);

	offset = 0;
	block = UPGT_EEPROM_BLOCK_SIZE;
	while (offset < UPGT_EEPROM_SIZE) {
		FUNC0(sc, UPGT_DEBUG_FW,
		    "request EEPROM block (offset=%d, len=%d)\n", offset, block);

		data_cmd = FUNC10(sc);
		if (data_cmd == NULL) {
			FUNC2(sc);
			return (ENOBUFS);
		}

		/*
		 * Transmit the URB containing the CMD data.
		 */
		FUNC6(data_cmd->buf, 0, MCLBYTES);

		mem = (struct upgt_lmac_mem *)data_cmd->buf;
		mem->addr = FUNC5(sc->sc_memaddr_frame_start +
		    UPGT_MEMSIZE_FRAME_HEAD);

		eeprom = (struct upgt_lmac_eeprom *)(mem + 1);
		eeprom->header1.flags = 0;
		eeprom->header1.type = UPGT_H1_TYPE_CTRL;
		eeprom->header1.len = FUNC4((
		    sizeof(struct upgt_lmac_eeprom) -
		    sizeof(struct upgt_lmac_header)) + block);

		eeprom->header2.reqid = FUNC5(sc->sc_memaddr_frame_start);
		eeprom->header2.type = FUNC4(UPGT_H2_TYPE_EEPROM);
		eeprom->header2.flags = 0;

		eeprom->offset = FUNC4(offset);
		eeprom->len = FUNC4(block);

		data_cmd->buflen = sizeof(*mem) + sizeof(*eeprom) + block;

		mem->chksum = FUNC9((uint32_t *)eeprom,
		    data_cmd->buflen - sizeof(*mem));
		FUNC8(sc, data_cmd);

		error = FUNC7(sc, &sc->sc_mtx, 0, "eeprom_request", hz);
		if (error != 0) {
			FUNC3(sc->sc_dev,
			    "timeout while waiting for EEPROM data\n");
			FUNC2(sc);
			return (EIO);
		}

		offset += block;
		if (UPGT_EEPROM_SIZE - offset < block)
			block = UPGT_EEPROM_SIZE - offset;
	}

	FUNC2(sc);
	return (0);
}