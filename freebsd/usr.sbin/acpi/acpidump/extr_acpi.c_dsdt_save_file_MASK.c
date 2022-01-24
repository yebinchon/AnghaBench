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
typedef  int mode_t ;
typedef  int /*<<< orphan*/  ACPI_TABLE_HEADER ;

/* Variables and functions */
 int O_CREAT ; 
 int O_TRUNC ; 
 int O_WRONLY ; 
 int S_IRGRP ; 
 int S_IROTH ; 
 int S_IRUSR ; 
 int S_IWUSR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void
FUNC5(char *outfile, ACPI_TABLE_HEADER *rsdt, ACPI_TABLE_HEADER *dsdp)
{
	int	fd;
	mode_t	mode;

	FUNC0(outfile != NULL);
	mode = S_IRUSR | S_IWUSR | S_IRGRP | S_IROTH;
	fd = FUNC2(outfile, O_WRONLY | O_CREAT | O_TRUNC, mode);
	if (fd == -1) {
		FUNC3("dsdt_save_file");
		return;
	}
	FUNC4(fd, rsdt, dsdp);
	FUNC1(fd);
}