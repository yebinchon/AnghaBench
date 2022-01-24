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
typedef  scalar_t__ u_char ;

/* Variables and functions */
 int DWIDTH ; 
 scalar_t__ MAXMSG ; 
 int NBYTES ; 
 scalar_t__ NCHARS ; 
 int* asc_ptr ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int* data_table ; 
 int debug ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/ * FUNC4 (char*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int FUNC7 (int,char**,char*) ; 
 int i ; 
 size_t j ; 
 char* line ; 
 int linen ; 
 char* FUNC8 (size_t) ; 
 int max ; 
 char* message ; 
 int nchars ; 
 int /*<<< orphan*/  optarg ; 
 scalar_t__ optind ; 
 int pc ; 
 int* print ; 
 int /*<<< orphan*/  FUNC9 (char*,...) ; 
 int /*<<< orphan*/  FUNC10 (char) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdin ; 
 int /*<<< orphan*/  FUNC11 (char*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC12 (char*,char*,size_t) ; 
 int FUNC13 (char*) ; 
 int term ; 
 int trace ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 (char*,char) ; 
 int width ; 
 int x ; 
 int y ; 

int
FUNC16(int argc, char *argv[])
{
	int ch;

	while ((ch = FUNC7(argc, argv, "w:td")) != -1)
		switch (ch) {
		case 'd':
			debug = 1;
			break;
		case 't':
			trace = 1;
			break;
		case 'w':
			width = FUNC0(optarg);
			if (width <= 0 || width > DWIDTH)
				FUNC2(1, "illegal argument for -w option");
			break;
		case '?':
		default:
			FUNC14();
		}
	argc -= optind;
	argv += optind;

	for (i = 0; i < width; i++) {
		j = i * DWIDTH / width;
		print[j] = 1;
	}

	/* Have now read in the data. Next get the message to be printed. */
	if (*argv) {
		for(i=0, j=0; i < argc; i++)
			j += FUNC13(argv[i]) + 1;
		if ((message = FUNC8((size_t)j)) == NULL) 
			FUNC1(1, "malloc");
		FUNC12(message, *argv, j);
		while (*++argv) {
			FUNC11(message, " ", j);
			FUNC11(message, *argv, j);
		}
		nchars = FUNC13(message);
	} else {
		if ((message = FUNC8((size_t)MAXMSG)) == NULL)
			FUNC1(1, "malloc");
		FUNC5(stderr,"Message: ");
		if (FUNC4(message, MAXMSG, stdin) == NULL) {
			nchars = 0;
			message[0] = '\0';
		} else {
			nchars = FUNC13(message);

			/* Get rid of newline. */
			if (message[nchars - 1] == '\n')
				message[--nchars] = '\0';
		}
	}

	/* some debugging print statements */
	if (debug) {
		FUNC9("const int asc_ptr[NCHARS] = {\n");
		for (i = 0; i < 128; i++) {
			FUNC9("%4d,   ",asc_ptr[i]);
			if ((i+1) % 8 == 0)
				FUNC9("\n");
		}
		FUNC9("};\nconst unsigned char data_table[NBYTES] = {\n");
		FUNC9("/*          ");
		for (i = 0; i < 10; i++) FUNC9(" %3d  ",i);
		FUNC9("*/\n");
		for (i = 0; i < NBYTES; i += 10) {
			FUNC9("/* %4d */  ",i);
			for (j = i; j < i+10; j++) {
				x = data_table[j] & 0377;
				FUNC9(" %3d, ",x);
			}
			FUNC10('\n');
		}
		FUNC9("};\n");
	}

	/* check message to make sure it's legal */
	j = 0;
	for (i = 0; i < nchars; i++)
		if ((u_char) message[i] >= NCHARS ||
		    asc_ptr[(u_char) message[i]] == 0) {
			FUNC15("the character '%c' is not in my character set",
				message[i]);
			j++;
		}
	if (j)
		FUNC3(1);

	if (trace)
		FUNC9("Message '%s' is OK\n",message);
	/* Now have message. Print it one character at a time.  */

	for (i = 0; i < nchars; i++) {
		if (trace)
			FUNC9("Char #%d: %c\n", i, message[i]);
		for (j = 0; j < DWIDTH; j++) line[j] = ' ';
		pc = asc_ptr[(u_char) message[i]];
		term = 0;
		max = 0;
		linen = 0;
		while (!term) {
			if (pc < 0 || pc > NBYTES) {
				FUNC9("bad pc: %d\n",pc);
				FUNC3(1);
			}
			x = data_table[pc] & 0377;
			if (trace)
				FUNC9("pc=%d, term=%d, max=%d, linen=%d, x=%d\n",pc,term,max,linen,x);
			if (x >= 128) {
				if (x>192) term++;
				x = x & 63;
				while (x--) {
					if (print[linen++]) {
						for (j=0; j <= max; j++)
							if (print[j])
								FUNC10(line[j]);
						FUNC10('\n');
					}
				}
				for (j = 0; j < DWIDTH; j++) line[j] = ' ';
				pc++;
			}
			else {
				y = data_table[pc+1];
				/* compensate for narrow teminals */
#ifdef notdef
				x = (x*width + (DWIDTH/2)) / DWIDTH;
				y = (y*width + (DWIDTH/2)) / DWIDTH;
#endif
				max = x+y;
				while (x < max) line[x++] = '#';
				pc += 2;
				if (trace)
					FUNC9("x=%d, y=%d, max=%d\n",x,y,max);
			}
		}
	}

	FUNC6(message);
	FUNC3(0);
}