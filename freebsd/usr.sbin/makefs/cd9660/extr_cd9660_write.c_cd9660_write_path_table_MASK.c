#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int* length; unsigned char* name; int /*<<< orphan*/  parent_number; int /*<<< orphan*/  first_sector; int /*<<< orphan*/ * extended_attribute_length; } ;
typedef  TYPE_3__ path_table_entry ;
typedef  int /*<<< orphan*/  off_t ;
struct TYPE_13__ {TYPE_5__* rootNode; int /*<<< orphan*/  sectorSize; int /*<<< orphan*/  pathTableLength; } ;
typedef  TYPE_4__ iso9660_disk ;
struct TYPE_14__ {struct TYPE_14__* ptnext; TYPE_2__* parent; int /*<<< orphan*/  fileDataSector; TYPE_1__* isoDirRecord; } ;
typedef  TYPE_5__ cd9660node ;
struct TYPE_11__ {int ptnumber; } ;
struct TYPE_10__ {int* name_len; TYPE_3__* name; int /*<<< orphan*/ * ext_attr_length; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int LITTLE_ENDIAN ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (TYPE_4__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned char*,int) ; 
 unsigned char* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (unsigned char*) ; 
 int /*<<< orphan*/  FUNC8 (unsigned char*,TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC10(iso9660_disk *diskStructure, FILE *fd, off_t sector,
    int mode)
{
	int path_table_sectors = FUNC0(diskStructure->sectorSize,
	    diskStructure->pathTableLength);
	unsigned char *buffer;
	unsigned char *buffer_head;
	int len, ret;
	path_table_entry temp_entry;
	cd9660node *ptcur;

	buffer = FUNC6(path_table_sectors, diskStructure->sectorSize);
	buffer_head = buffer;

	ptcur = diskStructure->rootNode;

	while (ptcur != NULL) {
		FUNC9(&temp_entry, 0, sizeof(path_table_entry));
		temp_entry.length[0] = ptcur->isoDirRecord->name_len[0];
		temp_entry.extended_attribute_length[0] =
		    ptcur->isoDirRecord->ext_attr_length[0];
		FUNC8(temp_entry.name, ptcur->isoDirRecord->name,
		    temp_entry.length[0] + 1);

		/* round up */
		len = temp_entry.length[0] + 8 + (temp_entry.length[0] & 0x01);

                /* todo: function pointers instead */
		if (mode == LITTLE_ENDIAN) {
			FUNC3(ptcur->fileDataSector,
			    temp_entry.first_sector);
			FUNC1((ptcur->parent == NULL ?
				1 : ptcur->parent->ptnumber),
			    temp_entry.parent_number);
		} else {
			FUNC4(ptcur->fileDataSector,
			    temp_entry.first_sector);
			FUNC2((ptcur->parent == NULL ?
				1 : ptcur->parent->ptnumber),
			    temp_entry.parent_number);
		}


		FUNC8(buffer, &temp_entry, len);
		buffer += len;

		ptcur = ptcur->ptnext;
	}

	ret = FUNC5(diskStructure, fd, sector, buffer_head,
	    path_table_sectors);
	FUNC7(buffer_head);
	return ret;
}