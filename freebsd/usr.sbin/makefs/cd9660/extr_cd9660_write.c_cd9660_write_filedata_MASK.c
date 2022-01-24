#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int off_t ;
struct TYPE_3__ {int sectorSize; } ;
typedef  TYPE_1__ iso9660_disk ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 size_t FUNC3 (unsigned char const*,int,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC4(iso9660_disk *diskStructure, FILE *fd, off_t sector,
    const unsigned char *buf, int numsecs)
{
	off_t curpos;
	size_t success;

	curpos = FUNC2(fd);

	if (FUNC1(fd, sector * diskStructure->sectorSize, SEEK_SET) == -1)
		FUNC0(1, "fseeko");

	success = FUNC3(buf, diskStructure->sectorSize * numsecs, 1, fd);

	if (FUNC1(fd, curpos, SEEK_SET) == -1)
		FUNC0(1, "fseeko");

	if (success == 1)
		success = diskStructure->sectorSize * numsecs;
	return success;
}