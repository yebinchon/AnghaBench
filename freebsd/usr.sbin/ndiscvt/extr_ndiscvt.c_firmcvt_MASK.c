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
typedef  int /*<<< orphan*/  sysbuf ;

/* Variables and functions */
 char* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,char*,char*,char*,...) ; 
 char* FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 char FUNC7 (char) ; 

__attribute__((used)) static void
FUNC8(char *firmfile)
{
	char			*basefile, *outfile, *ptr;
	char			sysbuf[1024];

	outfile = FUNC5(FUNC0(firmfile));
	basefile = FUNC5(outfile);

	FUNC4(sysbuf, sizeof(sysbuf),
#ifdef __i386__
	    "objcopy -I binary -O elf32-i386-freebsd -B i386 %s %s.o\n",
#endif
#ifdef __amd64__
	    "objcopy -I binary -O elf64-x86-64-freebsd -B i386 %s %s.o\n",
#endif
	    firmfile, outfile);
	FUNC3("%s", sysbuf);
	FUNC6(sysbuf);

	ptr = firmfile;
	while (*ptr) {
		if (*ptr == '/' || *ptr == '.')
			*ptr = '_';
		ptr++;
	}
	ptr = basefile;
	while (*ptr) {
		if (*ptr == '/' || *ptr == '.')
			*ptr = '_';
		else
			*ptr = FUNC7(*ptr);
		ptr++;
	}

	FUNC4(sysbuf, sizeof(sysbuf),
	    "objcopy --redefine-sym _binary_%s_start=%s_start "
	    "--strip-symbol _binary_%s_size "
	    "--redefine-sym _binary_%s_end=%s_end %s.o %s.o\n",
	    firmfile, basefile, firmfile, firmfile,
	    basefile, outfile, outfile);
	ptr = sysbuf;
	FUNC3("%s", sysbuf);
	FUNC6(sysbuf);

	FUNC4(sysbuf, sizeof(sysbuf),
	    "ld -Bshareable -d -warn-common -o %s.ko %s.o\n",
	    outfile, outfile);
	FUNC3("%s", sysbuf);
	FUNC6(sysbuf);

	FUNC2(basefile);

	FUNC1(0);
}