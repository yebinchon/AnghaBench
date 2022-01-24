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
struct fd_type {int sectrac; int secsize; int tracks; int heads; int /*<<< orphan*/  f_inter; int /*<<< orphan*/  f_gap; int /*<<< orphan*/  trans; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FD_GTYPE ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  O_RDWR ; 
 char* _PATH_TTY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,int,char const*) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int,char**,char*) ; 
 scalar_t__ FUNC9 (int,int /*<<< orphan*/ ,struct fd_type*) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 scalar_t__ FUNC11 (int,long,int /*<<< orphan*/ ) ; 
 char* FUNC12 (int) ; 
 scalar_t__ FUNC13 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC14 (char*,int /*<<< orphan*/ ,int) ; 
 int FUNC15 (char const*,int /*<<< orphan*/ ) ; 
 char const* optarg ; 
 int optind ; 
 int /*<<< orphan*/  FUNC16 (char*,int,...) ; 
 int /*<<< orphan*/  FUNC17 (char,int /*<<< orphan*/ *) ; 
 int FUNC18 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * stdout ; 
 int /*<<< orphan*/  FUNC20 () ; 
 int FUNC21 (int,char*,int) ; 

int
FUNC22(int argc, char **argv)
{
    int inputfd = -1, c, fdn = 0, i,j,fd;
    int bpt, verbose=1, nbytes=0, track;
    int interactive = 1;
    const char *device= "/dev/fd0";
    char *trackbuf = 0,*vrfybuf = 0;
    struct fd_type fdt;
    FILE *tty;

    FUNC19(stdout,0);
    while((c = FUNC8(argc, argv, "d:f:vy")) != -1)
	    switch(c) {
	    case 'd':	/* Which drive */
		    device = optarg;
		    break;

	    case 'f':	/* input file */
		    if (inputfd >= 0)
			    FUNC0(inputfd);
		    inputfd = FUNC15(optarg,O_RDONLY);
		    if (inputfd < 0)
			    FUNC1(1, "%s", optarg);
		    break;

	    case 'v':  /* Toggle verbosity */
		    verbose = !verbose;
		    break;

	    case 'y':  /* Don't confirm? */
		    interactive = 0;
		    break;

	    case '?': default:
		    FUNC20();
	    }

    if (inputfd < 0)
	inputfd = 0;

    if (!FUNC10(1))
	interactive = 0;

    if(optind < argc)
	    FUNC20();

    tty = FUNC4(_PATH_TTY,"r+");
    if(!tty)
	    FUNC1(1, _PATH_TTY);
    FUNC19(tty,0);

    for(j=1;j > 0;) {
        fdn++;
	if (interactive) {
	    FUNC6(tty,
		    "Please insert floppy #%d in drive %s and press return >",
		    fdn,device);
	    while(1) {
		i = FUNC7(tty);
		if(i == '\n') break;
	    }
	}

	if((fd = FUNC15(device, O_RDWR)) < 0)
	    FUNC1(1, "%s", device);

	if(FUNC9(fd, FD_GTYPE, &fdt) < 0)
	    FUNC2(1, "not a floppy disk: %s", device);

	bpt = fdt.sectrac * (1<<fdt.secsize) * 128;
	if(!trackbuf) {
	    trackbuf = FUNC12(bpt);
	    if(!trackbuf) FUNC2(1, "malloc");
	}
	if(!vrfybuf) {
	    vrfybuf = FUNC12(bpt);
	    if(!vrfybuf) FUNC2(1, "malloc");
	}

	if(fdn == 1) {
	    if(verbose) {
		FUNC16("Format: %d cylinders, %d heads, %d sectors, %d bytes = %dkb\n",
		fdt.tracks,fdt.heads,fdt.sectrac,(1<<fdt.secsize) * 128,
		fdt.tracks*bpt*fdt.heads/1024);

	    }
	    FUNC14(trackbuf,0,bpt);
	    for(j=0;inputfd >= 0 && j<bpt;j+=i) {
		if(!(i = FUNC18(inputfd,trackbuf+j,bpt-j))) {
		    FUNC0(inputfd);
		    inputfd = -1;
		    break;
		}
		nbytes += i;
	    }
	}
	for (track = 0; track < fdt.tracks * fdt.heads; track++) {
	    if(verbose) FUNC16("\r%3d ",fdt.tracks * fdt.heads-track);
	    if(verbose) FUNC17((j ? 'I':'Z'),stdout);
	    FUNC5(fd, track / fdt.heads, fdt.sectrac, track % fdt.heads,
		    fdt.trans, fdt.f_gap, fdt.secsize, 0xe6,
		    fdt.f_inter);
	    if(verbose) FUNC17('F',stdout);

	    if (FUNC11 (fd, (long) track*bpt, 0) < 0) FUNC1(1, "lseek");
	    if (FUNC21 (fd, trackbuf, bpt) != bpt) FUNC1(1, "write");
	    if(verbose) FUNC17('W',stdout);

	    if (FUNC11 (fd, (long) track*bpt, 0) < 0) FUNC1(1, "lseek");
	    if (FUNC18 (fd, vrfybuf, bpt) != bpt) FUNC1(1, "read");
	    if(verbose) FUNC17('R',stdout);

	    if (FUNC13(trackbuf,vrfybuf,bpt)) FUNC1(1, "compare");
	    if(verbose) FUNC17('C',stdout);

	    FUNC14(trackbuf,0,bpt);
	    for(j=0;inputfd >= 0 && j<bpt;j+=i) {
		if(!(i = FUNC18(inputfd,trackbuf+j,bpt-j))) {
		    FUNC0(inputfd);
		    inputfd = -1;
		    break;
		}
		nbytes += i;
	    }
	}
	FUNC0(fd);
	FUNC17('\r',stdout);
    }
    if(verbose)
	FUNC16("%d bytes on %d flopp%s\n",nbytes,fdn,fdn==1?"y":"ies");
    FUNC3(0);
}