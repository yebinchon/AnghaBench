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
typedef  size_t uint32_t ;
struct octeon_device {int* uboot_version; int uboot_sidx; int uboot_eidx; int uboot_len; struct lio_console* console; } ;
struct lio_console {char* leftover; scalar_t__ waiting; } ;
typedef  int int32_t ;

/* Variables and functions */
 int OCTEON_UBOOT_BUFFER_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct octeon_device*,size_t) ; 
 int FUNC1 (struct octeon_device*,size_t,int*,int) ; 
 int FUNC2 (struct octeon_device*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct octeon_device*,char*,size_t,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct octeon_device*,char*,size_t,int) ; 
 int /*<<< orphan*/  FUNC5 (struct octeon_device*,char*,int*) ; 

__attribute__((used)) static void
FUNC6(struct octeon_device *oct)
{
	struct lio_console *console;
	int32_t		bytes_read, total_read, tries;
	uint32_t	console_num = 0;
	int		i, ret = 0;

	ret = FUNC2(oct, "setenv stdout pci", 50);

	console = &oct->console[console_num];
	tries = 0;
	total_read = 0;

	ret = FUNC2(oct, "version", 1);

	do {
		/*
		 * Take console output regardless of whether it will be
		 * logged
		 */
		bytes_read = FUNC1(oct,
					      console_num, oct->uboot_version +
					      total_read,
					      OCTEON_UBOOT_BUFFER_SIZE - 1 -
					      total_read);
		if (bytes_read > 0) {
			oct->uboot_version[bytes_read] = 0x0;

			total_read += bytes_read;
			if (console->waiting)
				FUNC0(oct, console_num);

		} else if (bytes_read < 0) {
			FUNC4(oct, "Error reading console %u, ret=%d\n",
				    console_num, bytes_read);
		}

		tries++;
	} while ((bytes_read > 0) && (tries < 16));

	/*
	 * If nothing is read after polling the console, output any leftovers
	 * if any
	 */
	if ((total_read == 0) && (console->leftover[0])) {
		FUNC3(oct, "%u: %s\n", console_num, console->leftover);
		console->leftover[0] = '\0';
	}

	ret = FUNC2(oct, "setenv stdout serial", 50);

	/* U-Boot */
	for (i = 0; i < (OCTEON_UBOOT_BUFFER_SIZE - 9); i++) {
		if (oct->uboot_version[i] == 'U' &&
		    oct->uboot_version[i + 2] == 'B' &&
		    oct->uboot_version[i + 3] == 'o' &&
		    oct->uboot_version[i + 4] == 'o' &&
		    oct->uboot_version[i + 5] == 't') {
			oct->uboot_sidx = i;
			i++;
			for (; oct->uboot_version[i] != 0x0; i++) {
				if (oct->uboot_version[i] == 'm' &&
				    oct->uboot_version[i + 1] == 'i' &&
				    oct->uboot_version[i + 2] == 'p' &&
				    oct->uboot_version[i + 3] == 's') {
					oct->uboot_eidx = i - 1;
					oct->uboot_version[i - 1] = 0x0;
					oct->uboot_len = oct->uboot_eidx -
						oct->uboot_sidx + 1;
					FUNC5(oct, "%s\n",
						     &oct->uboot_version
						     [oct->uboot_sidx]);
					return;
				}
			}
		}
	}
}