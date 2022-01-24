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
typedef  int uint32_t ;
struct mvs_channel {int quirks; int /*<<< orphan*/  r_mem; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int MVS_Q_SOC65 ; 
 int /*<<< orphan*/  SATA_PHYM3 ; 
 int /*<<< orphan*/  SATA_PHYM4 ; 
 int /*<<< orphan*/  SATA_PHYM9_GEN1 ; 
 int /*<<< orphan*/  SATA_PHYM9_GEN2 ; 
 struct mvs_channel* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(device_t dev)
{
	struct mvs_channel *ch = FUNC2(dev);
	uint32_t val;

	if (ch->quirks & MVS_Q_SOC65) {
		val = FUNC0(ch->r_mem, SATA_PHYM3);
		val &= ~(0x3 << 27);	/* SELMUPF = 1 */
		val |= (0x1 << 27);
		val &= ~(0x3 << 29);	/* SELMUPI = 1 */
		val |= (0x1 << 29);
		FUNC1(ch->r_mem, SATA_PHYM3, val);

		val = FUNC0(ch->r_mem, SATA_PHYM4);
		val &= ~0x1;		/* SATU_OD8 = 0 */
		val |= (0x1 << 16);	/* reserved bit 16 = 1 */
		FUNC1(ch->r_mem, SATA_PHYM4, val);

		val = FUNC0(ch->r_mem, SATA_PHYM9_GEN2);
		val &= ~0xf;		/* TXAMP[3:0] = 8 */
		val |= 0x8;
		val &= ~(0x1 << 14);	/* TXAMP[4] = 0 */
		FUNC1(ch->r_mem, SATA_PHYM9_GEN2, val);

		val = FUNC0(ch->r_mem, SATA_PHYM9_GEN1);
		val &= ~0xf;		/* TXAMP[3:0] = 8 */
		val |= 0x8;
		val &= ~(0x1 << 14);	/* TXAMP[4] = 0 */
		FUNC1(ch->r_mem, SATA_PHYM9_GEN1, val);
	}
}