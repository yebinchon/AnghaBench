#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int u_int8_t ;
typedef  int /*<<< orphan*/  u_int16_t ;
struct TYPE_9__ {int block_address; int block_size; scalar_t__ block_alignment; } ;
typedef  TYPE_1__ ng_bt3c_firmware_block_ep ;
typedef  TYPE_2__* bt3c_softc_p ;
struct TYPE_10__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ bootverbose ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,...) ; 

__attribute__((used)) static void
FUNC7(bt3c_softc_p sc, char const *firmware, int firmware_size)
{
	ng_bt3c_firmware_block_ep const	*block = NULL;
	u_int16_t const			*data = NULL;
	int				 i, size;
	u_int8_t			 c;

	/* Reset */
	FUNC6(sc->dev, "Reseting the card...\n");
	FUNC3(sc, 0x8040, 0x0404);
	FUNC3(sc, 0x8040, 0x0400);
	FUNC0(1);

	FUNC3(sc, 0x8040, 0x0404);
	FUNC0(17);

	/* Download firmware */
	FUNC6(sc->dev, "Starting firmware download process...\n");

	for (size = 0; size < firmware_size; ) {
		block = (ng_bt3c_firmware_block_ep const *)(firmware + size);
		data = (u_int16_t const *)(block + 1);

		if (bootverbose)
			FUNC6(sc->dev, "Download firmware block, " \
				"address=%#08x, size=%d words, aligment=%d\n",
				block->block_address, block->block_size,
				block->block_alignment);

		FUNC2(sc, block->block_address);
		for (i = 0; i < block->block_size; i++)
			FUNC5(sc, data[i]);

		size += (sizeof(*block) + (block->block_size * 2) + 
				block->block_alignment);
	}

	FUNC0(17);
	FUNC6(sc->dev, "Firmware download process complete\n");

	/* Boot */
	FUNC6(sc->dev, "Starting the card...\n");
	FUNC2(sc, 0x3000);
	FUNC1(sc, c);
	FUNC4(sc, (c | 0x40));
	FUNC0(17);

	/* Clear registers */
	FUNC6(sc->dev, "Clearing card registers...\n");
	FUNC3(sc, 0x7006, 0x0000);
	FUNC3(sc, 0x7005, 0x0000);
	FUNC3(sc, 0x7001, 0x0000);
	FUNC0(1000);
}