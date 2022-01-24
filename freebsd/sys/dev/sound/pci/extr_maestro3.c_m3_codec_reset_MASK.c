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
typedef  int u_int16_t ;
struct sc_info {int delay1; int delay2; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int COMMAND_ADDR_OUT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  GPIO_DATA ; 
 int /*<<< orphan*/  GPIO_DIRECTION ; 
 int /*<<< orphan*/  GPIO_MASK ; 
 int GPO_PRIMARY_AC97 ; 
 int IO_SRAM_ENABLE ; 
 int /*<<< orphan*/  FUNC1 (struct sc_info*) ; 
 int /*<<< orphan*/  RING_BUS_CTRL_A ; 
 int /*<<< orphan*/  RING_BUS_CTRL_B ; 
 int /*<<< orphan*/  SDO_IN_DEST_CTRL ; 
 int /*<<< orphan*/  SDO_OUT_DEST_CTRL ; 
 int SECOND_CODEC_ID_MASK ; 
 int SERIAL_AC_LINK_ENABLE ; 
 int STATUS_ADDR_IN ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int FUNC3 (struct sc_info*,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *,struct sc_info*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct sc_info*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC6(struct sc_info *sc)
{
	u_int16_t data, dir;
	int retry = 0;

	FUNC1(sc);
	do {
		data = FUNC3(sc, GPIO_DIRECTION);
		dir = data | 0x10; /* assuming pci bus master? */

		/* [[remote_codec_config]] */
		data = FUNC3(sc, RING_BUS_CTRL_B);
		FUNC5(sc, RING_BUS_CTRL_B, data & ~SECOND_CODEC_ID_MASK);
		data = FUNC3(sc, SDO_OUT_DEST_CTRL);
		FUNC5(sc, SDO_OUT_DEST_CTRL, data & ~COMMAND_ADDR_OUT);
		data = FUNC3(sc, SDO_IN_DEST_CTRL);
		FUNC5(sc, SDO_IN_DEST_CTRL, data & ~STATUS_ADDR_IN);

		FUNC5(sc, RING_BUS_CTRL_A, IO_SRAM_ENABLE);
		FUNC0(20);

		FUNC5(sc, GPIO_DIRECTION, dir & ~GPO_PRIMARY_AC97);
		FUNC5(sc, GPIO_MASK, ~GPO_PRIMARY_AC97);
		FUNC5(sc, GPIO_DATA, 0);
		FUNC5(sc, GPIO_DIRECTION, dir | GPO_PRIMARY_AC97);
		FUNC0(sc->delay1 * 1000); /*delay1 (ALLEGRO:50, MAESTRO3:20)*/
		FUNC5(sc, GPIO_DATA, GPO_PRIMARY_AC97);
		FUNC0(5);
		FUNC5(sc, RING_BUS_CTRL_A, IO_SRAM_ENABLE |
		    SERIAL_AC_LINK_ENABLE);
		FUNC5(sc, GPIO_MASK, ~0);
		FUNC0(sc->delay2 * 1000); /*delay2 (ALLEGRO:800, MAESTRO3:500)*/

		/* [[try read vendor]] */
		data = FUNC4(NULL, sc, 0x7c);
		if ((data == 0) || (data == 0xffff)) {
			retry++;
			if (retry > 3) {
				FUNC2(sc->dev, "Codec reset failed\n");
				break;
			}
			FUNC2(sc->dev, "Codec reset retry\n");
		} else retry = 0;
	} while (retry);
}