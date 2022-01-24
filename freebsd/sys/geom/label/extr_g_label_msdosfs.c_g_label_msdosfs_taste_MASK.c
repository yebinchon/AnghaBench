#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
typedef  int uint32_t ;
struct g_provider {int sectorsize; int /*<<< orphan*/  name; } ;
struct g_consumer {struct g_provider* provider; } ;
struct TYPE_6__ {int* BS_FilSysType; int* BS_VolLab; int BPB_NumFATs; int /*<<< orphan*/  BPB_BytsPerSec; int /*<<< orphan*/  BPB_FATSz32; int /*<<< orphan*/  BPB_RsvdSecCnt; } ;
struct TYPE_5__ {int* BS_FilSysType; int* BS_VolLab; int /*<<< orphan*/  BPB_FATSz16; } ;
struct TYPE_4__ {int* DIR_Name; int DIR_Attr; } ;
typedef  TYPE_1__ FAT_DES ;
typedef  TYPE_2__ FAT_BSBPB ;
typedef  TYPE_3__ FAT32_BSBPB ;

/* Variables and functions */
 int FAT_DES_ATTR_LONG_NAME ; 
 int FAT_DES_ATTR_VOLUME_ID ; 
 int /*<<< orphan*/  FUNC0 (int,char*,int,...) ; 
 char* LABEL_NO_NAME ; 
 int /*<<< orphan*/  FUNC1 (size_t,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (int*) ; 
 int /*<<< orphan*/  FUNC6 (char*,size_t) ; 
 scalar_t__ FUNC7 (struct g_consumer*,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (char*,int*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int*,char*,int) ; 

__attribute__((used)) static void
FUNC11(struct g_consumer *cp, char *label, size_t size)
{
	struct g_provider *pp;
	FAT_BSBPB *pfat_bsbpb;
	FAT32_BSBPB *pfat32_bsbpb;
	FAT_DES *pfat_entry;
	uint8_t *sector0, *sector;

	FUNC8();
	pp = cp->provider;
	sector0 = NULL;
	sector = NULL;
	FUNC4(label, size);

	/* Check if the sector size of the medium is a valid FAT sector size. */
	switch(pp->sectorsize) {
	case 512:
	case 1024:
	case 2048:
	case 4096:
		break;
	default:
		FUNC0(1, "MSDOSFS: %s: sector size %d not compatible.",
		    pp->name, pp->sectorsize);
		return;
	}

	/* Load 1st sector with boot sector and boot parameter block. */
	sector0 = (uint8_t *)FUNC7(cp, 0, pp->sectorsize, NULL);
	if (sector0 == NULL)
		return;

	/* Check for the FAT boot sector signature. */
	if (sector0[510] != 0x55 || sector0[511] != 0xaa) {
		FUNC0(1, "MSDOSFS: %s: no FAT signature found.",
		    pp->name);
		goto error;
	}


	/*
	 * Test if this is really a FAT volume and determine the FAT type.
	 */

	pfat_bsbpb = (FAT_BSBPB *)sector0;
	pfat32_bsbpb = (FAT32_BSBPB *)sector0;

	if (FUNC2(pfat_bsbpb->BPB_FATSz16) != 0) {
		/*
		 * If the BPB_FATSz16 field is not zero and the string "FAT" is
		 * at the right place, this should be a FAT12 or FAT16 volume.
		 */
		if (FUNC10(pfat_bsbpb->BS_FilSysType, "FAT", 3) != 0) {
			FUNC0(1,
			    "MSDOSFS: %s: FAT12/16 volume not valid.",
			    pp->name);
			goto error;
		}
		FUNC0(1, "MSDOSFS: %s: FAT12/FAT16 volume detected.",
		    pp->name);

		/* A volume with no name should have "NO NAME    " as label. */
		if (FUNC10(pfat_bsbpb->BS_VolLab, LABEL_NO_NAME,
		    sizeof(pfat_bsbpb->BS_VolLab)) == 0) {
			FUNC0(1,
			    "MSDOSFS: %s: FAT12/16 volume has no name.",
			    pp->name);
			goto error;
		}
		FUNC9(label, pfat_bsbpb->BS_VolLab,
		    FUNC1(size, sizeof(pfat_bsbpb->BS_VolLab) + 1));
	} else if (FUNC3(pfat32_bsbpb->BPB_FATSz32) != 0) {
		uint32_t fat_FirstDataSector, fat_BytesPerSector, offset;

		/*
		 * If the BPB_FATSz32 field is not zero and the string "FAT" is
		 * at the right place, this should be a FAT32 volume.
		 */
		if (FUNC10(pfat32_bsbpb->BS_FilSysType, "FAT", 3) != 0) {
			FUNC0(1, "MSDOSFS: %s: FAT32 volume not valid.",
			    pp->name);
			goto error;
		}
		FUNC0(1, "MSDOSFS: %s: FAT32 volume detected.",
		    pp->name);

		/*
		 * If the volume label is not "NO NAME    " we're done.
		 */
		if (FUNC10(pfat32_bsbpb->BS_VolLab, LABEL_NO_NAME,
		    sizeof(pfat32_bsbpb->BS_VolLab)) != 0) {
			FUNC9(label, pfat32_bsbpb->BS_VolLab,
			    FUNC1(size, sizeof(pfat32_bsbpb->BS_VolLab) + 1));
			goto endofchecks;
		}

		/*
		 * If the volume label "NO NAME    " is in the boot sector, the
		 * label of FAT32 volumes may be stored as a special entry in
		 * the root directory.
		 */
		fat_FirstDataSector =
		    FUNC2(pfat32_bsbpb->BPB_RsvdSecCnt) +
		    (pfat32_bsbpb->BPB_NumFATs *
		     FUNC3(pfat32_bsbpb->BPB_FATSz32));
		fat_BytesPerSector = FUNC2(pfat32_bsbpb->BPB_BytsPerSec);

		FUNC0(2,
		    "MSDOSFS: FAT_FirstDataSector=0x%x, FAT_BytesPerSector=%d",
		    fat_FirstDataSector, fat_BytesPerSector);

		for (offset = fat_BytesPerSector * fat_FirstDataSector;;
		    offset += fat_BytesPerSector) {
			sector = (uint8_t *)FUNC7(cp, offset,
			    fat_BytesPerSector, NULL);
			if (sector == NULL)
				goto error;

			pfat_entry = (FAT_DES *)sector;
			do {
				/* No more entries available. */
				if (pfat_entry->DIR_Name[0] == 0) {
					FUNC0(1, "MSDOSFS: %s: "
					    "FAT32 volume has no name.",
					    pp->name);
					goto error;
				}

				/* Skip empty or long name entries. */
				if (pfat_entry->DIR_Name[0] == 0xe5 ||
				    (pfat_entry->DIR_Attr &
				     FAT_DES_ATTR_LONG_NAME) ==
				    FAT_DES_ATTR_LONG_NAME) {
					continue;
				}

				/*
				 * The name of the entry is the volume label if
				 * ATTR_VOLUME_ID is set.
				 */
				if (pfat_entry->DIR_Attr &
				    FAT_DES_ATTR_VOLUME_ID) {
					FUNC9(label, pfat_entry->DIR_Name,
					    FUNC1(size,
					    sizeof(pfat_entry->DIR_Name) + 1));
					goto endofchecks;
				}
			} while((uint8_t *)(++pfat_entry) <
			    (uint8_t *)(sector + fat_BytesPerSector));
			FUNC5(sector);
		}
	} else {
		FUNC0(1, "MSDOSFS: %s: no FAT volume detected.",
		    pp->name);
		goto error;
	}

endofchecks:
	FUNC6(label, size);

error:
	if (sector0 != NULL)
		FUNC5(sector0);
	if (sector != NULL)
		FUNC5(sector);
}