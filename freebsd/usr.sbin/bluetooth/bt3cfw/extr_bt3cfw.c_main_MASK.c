#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint16_t ;
typedef  int /*<<< orphan*/  path ;
struct TYPE_2__ {int block_address; int block_size; int block_alignment; } ;
typedef  TYPE_1__ ng_bt3c_firmware_block_ep ;
typedef  int /*<<< orphan*/  buffer ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  BT3CFW_IDENT ; 
 int BT3CFW_MAX_FIRMWARE_SIZE ; 
 int /*<<< orphan*/  LOG_ERR ; 
 int LOG_NDELAY ; 
 int LOG_PERROR ; 
 int LOG_PID ; 
 int /*<<< orphan*/  LOG_USER ; 
 int /*<<< orphan*/  NGM_BT3C_COOKIE ; 
 int /*<<< orphan*/  NGM_BT3C_NODE_DOWNLOAD_FIRMWARE ; 
 int NG_PATHSIZ ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int*,int*) ; 
 scalar_t__ FUNC1 (int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void const*,int) ; 
 scalar_t__ FUNC2 (int,int) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int,char**,char*) ; 
 int FUNC9 (char*) ; 
 int FUNC10 (char*) ; 
 int FUNC11 (char*) ; 
 int /*<<< orphan*/  FUNC12 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 char* optarg ; 
 int /*<<< orphan*/  FUNC14 (char*,int,char*,char*) ; 
 char* FUNC15 (int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC17 () ; 

int
FUNC18(int argc, char *argv[])
{
	FILE	*firmware_file = NULL;
	char	 buffer[80], path[NG_PATHSIZ],
		*firmware_filename = NULL;
	uint8_t	*firmware = NULL;
	int	 firmware_size, opt, cs, ds;

	FUNC12(path, 0, sizeof(path));
	FUNC13(BT3CFW_IDENT, LOG_NDELAY|LOG_PID|LOG_PERROR, LOG_USER);
 
	while ((opt = FUNC8(argc, argv, "f:hn:")) != -1) {
		switch (opt) {
		case 'f':
			firmware_filename = optarg;
			break;
  
		case 'n':
			FUNC14(path, sizeof(path), "%s:", optarg);
			break;

		case 'h':
		default:
			FUNC17();
			/* NOT REACHED */
		}
	}

	if (firmware_filename == NULL || path[0] == 0)
		FUNC17();
		/* NOT REACHED */

	firmware = (uint8_t *) FUNC2(BT3CFW_MAX_FIRMWARE_SIZE,
					sizeof(uint8_t));
	if (firmware == NULL) {
		FUNC16(LOG_ERR, "Could not allocate firmware buffer");
		FUNC3(255);
	}

	if ((firmware_file = FUNC6(firmware_filename, "r")) == NULL) {
		FUNC16(LOG_ERR, "Could not open BT3C firmware file %s. %s (%d)",
				firmware_filename, FUNC15(errno), errno);
		FUNC3(255);
	}

	firmware_size = 0;

	while (FUNC5(buffer, sizeof(buffer), firmware_file)) {
		int     i, size, address, cs, fcs;

		size = FUNC11(buffer + 2);
		address = FUNC10(buffer + 4);
		fcs = FUNC11(buffer + 2 + size * 2);

		if (buffer[1] == '3') {
			ng_bt3c_firmware_block_ep	*block = NULL;
			uint16_t			*data = NULL;

			block = (ng_bt3c_firmware_block_ep *)
						(firmware + firmware_size);

			firmware_size += sizeof(*block);
			if (firmware_size >= BT3CFW_MAX_FIRMWARE_SIZE) {
				FUNC16(LOG_ERR, "Could not add new firmware " \
						"block. Firmware file %s is " \
						"too big, firmware_size=%d", 
						firmware_filename,
						firmware_size);
				FUNC3(255);
			}

			block->block_address = address;
			block->block_size = (size - 4) / 2;
			block->block_alignment = (block->block_size * 2) % 3;
			if (block->block_alignment != 0)
				block->block_alignment = 3 - block->block_alignment;

			firmware_size += (block->block_size * 2);
			firmware_size += block->block_alignment;
			if (firmware_size >= BT3CFW_MAX_FIRMWARE_SIZE) {
				FUNC16(LOG_ERR, "Could not add new firmware " \
						"data. Firmware file %s is " \
						"too big, firmware_size=%d", 
						firmware_filename,
						firmware_size);
				FUNC3(255);
			}

			/* First part of the cheksum: size and address */
			cs = 0;
			for (i = 0; i < 5; i++)
				cs += FUNC11(buffer + 2 + i * 2);

			/* Data + second part of the cheksum: data */
			data = (uint16_t *)(block + 1);
			for (i = 0; i < block->block_size; i++) {
				data[i] = FUNC9(buffer + (i * 4) + 12);
				cs += (((data[i] & 0xff00) >> 8) & 0xff);
				cs += (data[i] & 0x00ff);
			}
		} else
			for (cs = 0, i = 0; i < size; i++)
				cs += FUNC11(buffer + 2 + i * 2);

		if (((cs + fcs) & 0xff) != 0xff) {
			FUNC16(LOG_ERR, "Invalid firmware file %s. Checksum " \
					"error, cs=%#x, fcs=%#x, checksum=%#x",
					firmware_filename, (cs & 0xff), fcs,
					((cs + fcs) & 0xff));
			FUNC3(255);
		}
	}

	/* Send firmware to the card */
	if (FUNC0(NULL, &cs, &ds) < 0) {
		FUNC16(LOG_ERR, "Could not create Netgraph socket. %s (%d)",
				FUNC15(errno), errno);
		FUNC3(255);
	}

	if (FUNC1(cs, path, NGM_BT3C_COOKIE,
			NGM_BT3C_NODE_DOWNLOAD_FIRMWARE,
			(void const *) firmware, firmware_size) < 0) {
		FUNC16(LOG_ERR, "Could not send Netgraph message. %s (%d)",
				FUNC15(errno), errno);
		FUNC3(255);
	}

	FUNC7(firmware);
	firmware = NULL;
	FUNC4(firmware_file);

	return (0);
}