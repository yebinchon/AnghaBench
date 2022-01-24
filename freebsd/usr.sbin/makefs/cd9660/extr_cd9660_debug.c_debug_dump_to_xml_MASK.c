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
typedef  int /*<<< orphan*/  u_char ;
struct iso_primary_descriptor {scalar_t__ type_m_path_table; scalar_t__ path_table_size; scalar_t__ type_l_path_table; } ;
struct _boot_volume_descriptor {scalar_t__ type_m_path_table; scalar_t__ path_table_size; scalar_t__ type_l_path_table; } ;
typedef  int off_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int CD9660_SECTOR_SIZE ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int,char*) ; 
 int /*<<< orphan*/  FUNC4 (unsigned char*,int,int,int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct iso_primary_descriptor*,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 

void
FUNC8(FILE *fd)
{
	unsigned char buf[CD9660_SECTOR_SIZE];
	off_t sector;
	int t, t2;
	struct iso_primary_descriptor primaryVD;
	struct _boot_volume_descriptor bootVD;

	FUNC7("<cd9660dump>\n");

	/* Display Volume Descriptors */
	sector = 16;
	do {
		if (FUNC5(fd, CD9660_SECTOR_SIZE * sector, SEEK_SET) == -1)
			FUNC3(1, "fseeko");
		FUNC4(buf, 1, CD9660_SECTOR_SIZE, fd);
		t = (int)((unsigned char)buf[0]);
		switch (t) {
		case 0:
			FUNC6(&bootVD, buf, CD9660_SECTOR_SIZE);
			break;
		case 1:
			FUNC6(&primaryVD, buf, CD9660_SECTOR_SIZE);
			break;
		}
		FUNC1(buf, sector);
		sector++;
	} while (t != 255);

	t = FUNC2((u_char *)primaryVD.type_l_path_table,
	    731);
	t2 = FUNC2((u_char *)primaryVD.path_table_size, 733);
	FUNC7("Path table 1 located at sector %i and is %i bytes long\n",
	    t,t2);
	FUNC0(fd, t, t2, 721);

	t = FUNC2((u_char *)primaryVD.type_m_path_table,
	    731);
	FUNC0(fd, t, t2, 722);

	FUNC7("</cd9660dump>\n");
}