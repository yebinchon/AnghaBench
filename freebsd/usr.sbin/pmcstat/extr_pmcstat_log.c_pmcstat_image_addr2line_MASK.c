#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uintfptr_t ;
struct pmcstat_image {int /*<<< orphan*/ * pi_addr2line; int /*<<< orphan*/  pi_fullpath; } ;
typedef  int /*<<< orphan*/  imagepath ;
typedef  int /*<<< orphan*/  cmdline ;
struct TYPE_2__ {char* pa_fsroot; } ;

/* Variables and functions */
 int /*<<< orphan*/  O_RDONLY ; 
 int PATH_MAX ; 
 TYPE_1__ args ; 
 unsigned int FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (char*,size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,void*) ; 
 int FUNC6 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC9 (char*,char*) ; 
 int /*<<< orphan*/  FUNC10 (char*,int,char*,char*,...) ; 
 char* FUNC11 (char*,char) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 

int
FUNC13(struct pmcstat_image *image, uintfptr_t addr,
    char *sourcefile, size_t sourcefile_len, unsigned *sourceline,
    char *funcname, size_t funcname_len)
{
	static int addr2line_warn = 0;

	char *sep, cmdline[PATH_MAX], imagepath[PATH_MAX];
	unsigned l;
	int fd;

	if (image->pi_addr2line == NULL) {
		/* Try default debug file location. */
		FUNC10(imagepath, sizeof(imagepath),
		    "/usr/lib/debug/%s%s.debug",
		    args.pa_fsroot,
		    FUNC8(image->pi_fullpath));
		fd = FUNC6(imagepath, O_RDONLY);
		if (fd < 0) {
			/* Old kernel symbol path. */
			FUNC10(imagepath, sizeof(imagepath), "%s%s.symbols",
			    args.pa_fsroot,
			    FUNC8(image->pi_fullpath));
			fd = FUNC6(imagepath, O_RDONLY);
			if (fd < 0) {
				FUNC10(imagepath, sizeof(imagepath), "%s%s",
				    args.pa_fsroot,
				    FUNC8(
				        image->pi_fullpath));
			}
		}
		if (fd >= 0)
			FUNC1(fd);
		/*
		 * New addr2line support recursive inline function with -i
		 * but the format does not add a marker when no more entries
		 * are available.
		 */
		FUNC10(cmdline, sizeof(cmdline), "addr2line -Cfe \"%s\"",
		    imagepath);
		image->pi_addr2line = FUNC9(cmdline, "r+");
		if (image->pi_addr2line == NULL) {
			if (!addr2line_warn) {
				addr2line_warn = 1;
				FUNC12(
"WARNING: addr2line is needed for source code information."
				    );
			}
			return (0);
		}
	}

	if (FUNC2(image->pi_addr2line) || FUNC3(image->pi_addr2line)) {
		FUNC12("WARNING: addr2line pipe error");
		FUNC7(image->pi_addr2line);
		image->pi_addr2line = NULL;
		return (0);
	}

	FUNC5(image->pi_addr2line, "%p\n", (void *)addr);

	if (FUNC4(funcname, funcname_len, image->pi_addr2line) == NULL) {
		FUNC12("WARNING: addr2line function name read error");
		return (0);
	}
	sep = FUNC11(funcname, '\n');
	if (sep != NULL)
		*sep = '\0';

	if (FUNC4(sourcefile, sourcefile_len, image->pi_addr2line) == NULL) {
		FUNC12("WARNING: addr2line source file read error");
		return (0);
	}
	sep = FUNC11(sourcefile, ':');
	if (sep == NULL) {
		FUNC12("WARNING: addr2line source line separator missing");
		return (0);
	}
	*sep = '\0';
	l = FUNC0(sep+1);
	if (l == 0)
		return (0);
	*sourceline = l;
	return (1);
}