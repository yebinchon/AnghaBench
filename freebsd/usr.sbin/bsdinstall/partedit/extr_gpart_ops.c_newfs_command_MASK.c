#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zfsboot_path ;
struct TYPE_4__ {char* member_0; char* member_1; char* member_2; int member_3; scalar_t__ state; char const* name; } ;
typedef  TYPE_1__ DIALOG_LISTITEM ;

/* Variables and functions */
 int /*<<< orphan*/  FLAG_CHECK ; 
 int /*<<< orphan*/  FLAG_RADIO ; 
 int MAXPATHLEN ; 
 int S_IRGRP ; 
 int S_IROTH ; 
 int S_IRWXU ; 
 int S_IXGRP ; 
 int S_IXOTH ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*) ; 
 char* FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 scalar_t__ FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*) ; 
 scalar_t__ FUNC8 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*) ; 

__attribute__((used)) static void
FUNC10(const char *fstype, char *command, int use_default)
{
	if (FUNC8(fstype, "freebsd-ufs") == 0) {
		int i;
		DIALOG_LISTITEM items[] = {
			{"UFS1", "UFS Version 1",
			    "Use version 1 of the UFS file system instead "
			    "of version 2 (not recommended)", 0 },
			{"SU", "Softupdates",
			    "Enable softupdates (default)", 1 },
			{"SUJ", "Softupdates journaling",
			    "Enable file system journaling (default - "
			    "turn off for SSDs)", 1 },
			{"TRIM", "Enable SSD TRIM support",
			    "Enable TRIM support, useful on solid-state drives",
			    0 },
		};

		if (!use_default) {
			int choice;
			choice = FUNC1("UFS Options", "", 0, 0, 0,
			    FUNC4(items), items, NULL,
			    FLAG_CHECK, &i);
			if (choice == 1) /* Cancel */
				return;
		}

		FUNC9(command, "newfs ");
		for (i = 0; i < (int)FUNC4(items); i++) {
			if (items[i].state == 0)
				continue;
			if (FUNC8(items[i].name, "UFS1") == 0)
				FUNC7(command, "-O1 ");
			else if (FUNC8(items[i].name, "SU") == 0)
				FUNC7(command, "-U ");
			else if (FUNC8(items[i].name, "SUJ") == 0)
				FUNC7(command, "-j ");
			else if (FUNC8(items[i].name, "TRIM") == 0)
				FUNC7(command, "-t ");
		}
	} else if (FUNC8(fstype, "freebsd-zfs") == 0) {
		int i;
		DIALOG_LISTITEM items[] = {
			{"fletcher4", "checksum algorithm: fletcher4",
			    "Use fletcher4 for data integrity checking. "
			    "(default)", 1 },
			{"fletcher2", "checksum algorithm: fletcher2",
			    "Use fletcher2 for data integrity checking. "
			    "(not recommended)", 0 },
			{"sha256", "checksum algorithm: sha256",
			    "Use sha256 for data integrity checking. "
			    "(not recommended)", 0 },
			{"atime", "Update atimes for files",
			    "Disable atime update", 0 },
		};

		if (!use_default) {
			int choice;
			choice = FUNC1("ZFS Options", "", 0, 0, 0,
			    FUNC4(items), items, NULL,
			    FLAG_CHECK, &i);
			if (choice == 1) /* Cancel */
				return;
		}

		FUNC9(command, "zpool create -f -m none ");
		if (FUNC2("BSDINSTALL_TMPBOOT") != NULL) {
			char zfsboot_path[MAXPATHLEN];
			FUNC5(zfsboot_path, sizeof(zfsboot_path), "%s/zfs",
			    FUNC2("BSDINSTALL_TMPBOOT"));
			FUNC3(zfsboot_path, S_IRWXU | S_IRGRP | S_IXGRP |
			    S_IROTH | S_IXOTH);
			FUNC6(command, "%s -o cachefile=%s/zpool.cache ",
			    command, zfsboot_path);
		}
		for (i = 0; i < (int)FUNC4(items); i++) {
			if (items[i].state == 0)
				continue;
			if (FUNC8(items[i].name, "fletcher4") == 0)
				FUNC7(command, "-O checksum=fletcher4 ");
			else if (FUNC8(items[i].name, "fletcher2") == 0)
				FUNC7(command, "-O checksum=fletcher2 ");
			else if (FUNC8(items[i].name, "sha256") == 0)
				FUNC7(command, "-O checksum=sha256 ");
			else if (FUNC8(items[i].name, "atime") == 0)
				FUNC7(command, "-O atime=off ");
		}
	} else if (FUNC8(fstype, "fat32") == 0 || FUNC8(fstype, "efi") == 0 ||
	     FUNC8(fstype, "ms-basic-data") == 0) {
		int i;
		DIALOG_LISTITEM items[] = {
			{"FAT32", "FAT Type 32",
			    "Create a FAT32 filesystem (default)", 1 },
			{"FAT16", "FAT Type 16",
			    "Create a FAT16 filesystem", 0 },
			{"FAT12", "FAT Type 12",
			    "Create a FAT12 filesystem", 0 },
		};

		if (!use_default) {
			int choice;
			choice = FUNC1("FAT Options", "", 0, 0, 0,
			    FUNC4(items), items, NULL,
			    FLAG_RADIO, &i);
			if (choice == 1) /* Cancel */
				return;
		}

		FUNC9(command, "newfs_msdos ");
		for (i = 0; i < (int)FUNC4(items); i++) {
			if (items[i].state == 0)
				continue;
			if (FUNC8(items[i].name, "FAT32") == 0)
				FUNC7(command, "-F 32 -c 1");
			else if (FUNC8(items[i].name, "FAT16") == 0)
				FUNC7(command, "-F 16 ");
			else if (FUNC8(items[i].name, "FAT12") == 0)
				FUNC7(command, "-F 12 ");
		}
	} else {
		if (!use_default)
			FUNC0("Error", "No configurable options exist "
			    "for this filesystem.", 0, 0, TRUE);
		command[0] = '\0';
	}
}