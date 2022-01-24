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
typedef  int /*<<< orphan*/  time_t ;
typedef  int off_t ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  SEEK_END ; 
 char* FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (unsigned char*) ; 
 int FUNC2 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int,int,char const*) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 scalar_t__ qflag ; 
 int FUNC7 (int,char*,int) ; 
 scalar_t__ vflag ; 

__attribute__((used)) static void
FUNC8(int fd, off_t out, const char *outfile, time_t ts)
{
	static int first = 1;
#ifndef SMALL
	static off_t in_tot, out_tot;
	uint32_t crc = 0;
#endif
	off_t in = 0, rv;

	if (first) {
#ifndef SMALL
		if (vflag)
			FUNC6("method  crc     date  time  ");
#endif
		if (qflag == 0)
			FUNC6("  compressed uncompressed  "
			       "ratio uncompressed_name\n");
	}
	first = 0;

	/* print totals? */
#ifndef SMALL
	if (fd == -1) {
		in = in_tot;
		out = out_tot;
	} else
#endif
	{
		/* read the last 4 bytes - this is the uncompressed size */
		rv = FUNC2(fd, (off_t)(-8), SEEK_END);
		if (rv != -1) {
			unsigned char buf[8];
			uint32_t usize;

			rv = FUNC7(fd, (char *)buf, sizeof(buf));
			if (rv == -1)
				FUNC3("read of uncompressed size");
			else if (rv != sizeof(buf))
				FUNC4("read of uncompressed size");

			else {
				usize = FUNC1(&buf[4]);
				in = (off_t)usize;
#ifndef SMALL
				crc = FUNC1(&buf[0]);
#endif
			}
		}
	}

#ifndef SMALL
	if (vflag && fd == -1)
		FUNC6("                            ");
	else if (vflag) {
		char *date = FUNC0(&ts);

		/* skip the day, 1/100th second, and year */
		date += 4;
		date[12] = 0;
		FUNC6("%5s %08x %11s ", "defla"/*XXX*/, crc, date);
	}
	in_tot += in;
	out_tot += out;
#else
	(void)&ts;	/* XXX */
#endif
	FUNC5(out, in, outfile);
}