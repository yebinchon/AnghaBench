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
typedef  int /*<<< orphan*/  nltype ;

/* Variables and functions */
 int ANYDEBUG ; 
 char* A_OUTNAME ; 
 void* Cflag ; 
 void* Eflag ; 
 int /*<<< orphan*/  Elist ; 
 void* FALSE ; 
 void* Fflag ; 
 int /*<<< orphan*/  Flist ; 
 int /*<<< orphan*/  GMONSUM ; 
 void* Kflag ; 
 int Lflag ; 
 void* TRUE ; 
 char* a_outname ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 void* aflag ; 
 int FUNC1 (char*,char***) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 (char*) ; 
 void* bflag ; 
 int cyclethreshold ; 
 int debug ; 
 void* dflag ; 
 int /*<<< orphan*/ ** FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 void* eflag ; 
 int FUNC6 (char*,char***) ; 
 int /*<<< orphan*/  elist ; 
 int /*<<< orphan*/  FUNC7 (int,char*,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 void* fflag ; 
 int /*<<< orphan*/  flist ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 char* gmonname ; 
 int hz ; 
 int FUNC11 (char*,char***) ; 
 void* kflag ; 
 int /*<<< orphan*/  kfromlist ; 
 int /*<<< orphan*/  ktolist ; 
 int lflag ; 
 scalar_t__ FUNC12 (scalar_t__) ; 
 int /*<<< orphan*/  nl ; 
 int /*<<< orphan*/  nname ; 
 int /*<<< orphan*/  FUNC13 (char*,...) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 () ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 void* sflag ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  FUNC19 (char*,char*) ; 
 int /*<<< orphan*/  FUNC20 (char*,char*) ; 
 scalar_t__ FUNC21 (char*) ; 
 void* uflag ; 
 int /*<<< orphan*/  valcmp ; 
 void* zflag ; 

int
FUNC22(int argc, char **argv)
{
    char	**sp;
    nltype	**timesortnlp;
    char	**defaultEs;

    --argc;
    argv++;
    debug = 0;
    bflag = TRUE;
    while ( *argv != 0 && **argv == '-' ) {
	(*argv)++;
	switch ( **argv ) {
	case 'a':
	    aflag = TRUE;
	    break;
	case 'b':
	    bflag = FALSE;
	    break;
	case 'C':
	    Cflag = TRUE;
	    cyclethreshold = FUNC3( *++argv );
	    break;
	case 'd':
	    dflag = TRUE;
	    FUNC18(stdout);
	    debug |= FUNC3( *++argv );
	    debug |= ANYDEBUG;
#	    ifdef DEBUG
		printf("[main] debug = %d\n", debug);
#	    else /* not DEBUG */
		FUNC13("gprof: -d ignored\n");
#	    endif /* DEBUG */
	    break;
	case 'E':
	    ++argv;
	    FUNC0( Elist , *argv );
	    Eflag = TRUE;
	    FUNC0( elist , *argv );
	    eflag = TRUE;
	    break;
	case 'e':
	    FUNC0( elist , *++argv );
	    eflag = TRUE;
	    break;
	case 'F':
	    ++argv;
	    FUNC0( Flist , *argv );
	    Fflag = TRUE;
	    FUNC0( flist , *argv );
	    fflag = TRUE;
	    break;
	case 'f':
	    FUNC0( flist , *++argv );
	    fflag = TRUE;
	    break;
	case 'k':
	    FUNC0( kfromlist , *++argv );
	    FUNC0( ktolist , *++argv );
	    kflag = TRUE;
	    break;
	case 'K':
	    Kflag = TRUE;
	    break;
	case 'l':
	    lflag = 1;
	    Lflag = 0;
	    break;
	case 'L':
	    Lflag = 1;
	    lflag = 0;
	    break;
	case 's':
	    sflag = TRUE;
	    break;
	case 'u':
	    uflag = TRUE;
	    break;
	case 'z':
	    zflag = TRUE;
	    break;
	}
	argv++;
    }
    if ( *argv != 0 ) {
	a_outname  = *argv;
	argv++;
    } else {
	a_outname  = A_OUTNAME;
    }
    if ( *argv != 0 ) {
	gmonname = *argv;
	argv++;
    } else {
	gmonname = (char *) FUNC12(FUNC21(a_outname)+6);
	FUNC20(gmonname, a_outname);
	FUNC19(gmonname, ".gmon");
    }
	/*
	 *	get information from the executable file.
	 */
    if ((Kflag && FUNC11(a_outname, &defaultEs) == -1) ||
      (!Kflag && FUNC6(a_outname, &defaultEs) == -1
#ifdef WITH_AOUT
      && aout_getnfile(a_outname, &defaultEs) == -1
#endif
      ))
	FUNC7(1, "%s: bad format", a_outname);
	/*
	 *	sort symbol table.
	 */
    FUNC17(nl, nname, sizeof(nltype), valcmp);
	/*
	 *	turn off default functions
	 */
    for ( sp = defaultEs ; *sp ; sp++ ) {
	Eflag = TRUE;
	FUNC0( Elist , *sp );
	eflag = TRUE;
	FUNC0( elist , *sp );
    }
	/*
	 *	get information about mon.out file(s).
	 */
    do	{
	FUNC10( gmonname );
	if ( *argv != 0 ) {
	    gmonname = *argv;
	}
    } while ( *argv++ != 0 );
	/*
	 *	how many ticks per second?
	 *	if we can't tell, report time in ticks.
	 */
    if (hz == 0) {
	hz = 1;
	FUNC9(stderr, "time is in ticks, not seconds\n");
    }
	/*
	 *	dump out a gmon.sum file if requested
	 */
    if ( sflag ) {
	FUNC5( GMONSUM );
    }
	/*
	 *	assign samples to procedures
	 */
    FUNC2();
	/*
	 *	assemble the dynamic profile
	 */
    timesortnlp = FUNC4();
	/*
	 *	print the dynamic profile
	 */
    if(!lflag) {
	    FUNC14( timesortnlp );
    }
	/*
	 *	print the flat profile
	 */
    if(!Lflag) {
	    FUNC16();
    }
	/*
	 *	print the index
	 */
    FUNC15();
    FUNC8(0);
}