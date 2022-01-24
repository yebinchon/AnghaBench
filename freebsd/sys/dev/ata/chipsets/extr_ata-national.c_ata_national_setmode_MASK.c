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
struct ata_channel {int unit; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ATA_MODE_MASK ; 
 int ATA_PIO4 ; 
 int ATA_UDMA0 ; 
 int /*<<< orphan*/  ATA_UDMA2 ; 
 int ATA_WDMA0 ; 
 size_t FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct ata_channel* FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,int const,int) ; 

__attribute__((used)) static int
FUNC6(device_t dev, int target, int mode)
{
	device_t parent = FUNC1(dev);
	struct ata_channel *ch = FUNC2(dev);
	int devno = (ch->unit << 1) + target;
	int piomode;
	static const uint32_t piotiming[] =
	    { 0x9172d132, 0x21717121, 0x00803020, 0x20102010, 0x00100010,
	      0x9172d132, 0x20102010, 0x00100010 };
	static const uint32_t dmatiming[] =
	    { 0x80077771, 0x80012121, 0x80002020 };
	static const uint32_t udmatiming[] =
	    { 0x80921250, 0x80911140, 0x80911030 };

	mode = FUNC3(mode, ATA_UDMA2);

	if (mode >= ATA_UDMA0) {
	    FUNC5(parent, 0x44 + (devno << 3),
			     udmatiming[mode & ATA_MODE_MASK], 4);
	    piomode = ATA_PIO4;
	} else if (mode >= ATA_WDMA0) {
	    FUNC5(parent, 0x44 + (devno << 3),
			     dmatiming[mode & ATA_MODE_MASK], 4);
	    piomode = mode;
	} else {
	    FUNC5(parent, 0x44 + (devno << 3),
			     FUNC4(parent, 0x44 + (devno << 3), 4) |
			     0x80000000, 4);
	    piomode = mode;
	}
	FUNC5(parent, 0x40 + (devno << 3),
			 piotiming[FUNC0(piomode)], 4);
	return (mode);
}