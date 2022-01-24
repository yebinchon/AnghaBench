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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ IFNAMSIZ ; 
 int /*<<< orphan*/  SEEK_END ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,void*,int) ; 
 void* FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (int,char*,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int,char*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/ * FUNC8 (char*,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char*,...) ; 
 int FUNC10 (void*,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (void*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,long,int /*<<< orphan*/ ) ; 
 int FUNC13 (int /*<<< orphan*/ *) ; 
 int FUNC14 (int,char**,char*) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC16 (void**,int*) ; 
 char* optarg ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * stderr ; 
 int /*<<< orphan*/ * stdout ; 
 scalar_t__ FUNC18 (char*,char*) ; 
 char* FUNC19 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC20 (char*) ; 
 int /*<<< orphan*/  FUNC21 () ; 

int
FUNC22(int argc, char *argv[])
{
	FILE			*fp, *outfp;
	int			i, bin = 0;
	void			*img;
	int			n, fsize, cnt;
	unsigned char		*ptr;
	char			*inffile = NULL, *sysfile = NULL;
	char			*outfile = NULL, *firmfile = NULL;
	char			*dname = NULL;
	int			ch;

	while((ch = FUNC14(argc, argv, "i:s:o:n:f:O")) != -1) {
		switch(ch) {
		case 'f':
			firmfile = optarg;
			break;
		case 'i':
			inffile = optarg;
			break;
		case 's':
			sysfile = optarg;
			break;
		case 'o':
			outfile = optarg;
			break;
		case 'n':
			dname = optarg;
			break;
		case 'O':
			bin = 1;
			break;
		default:
			FUNC21();
			break;
		}
	}

	if (firmfile != NULL)
		FUNC7(firmfile);

	if (sysfile == NULL)
		FUNC21();

	/* Open the .SYS file and load it into memory */
	fp = FUNC8(sysfile, "r");
	if (fp == NULL)
		FUNC3(1, "opening .SYS file '%s' failed", sysfile);
	FUNC12 (fp, 0L, SEEK_END);
	fsize = FUNC13 (fp);
	FUNC17 (fp);
	img = FUNC2(fsize, 1);
	n = FUNC10 (img, fsize, 1, fp);
	if (n == 0)
		FUNC3(1, "reading .SYS file '%s' failed", sysfile);

	FUNC6(fp);

	if (FUNC16(&img, &fsize)) {
		FUNC9(stderr, "section relocation failed\n");
		FUNC5(1);
	}

	if (outfile == NULL || FUNC18(outfile, "-") == 0)
		outfp = stdout;
	else {
		outfp = FUNC8(outfile, "w");
		if (outfp == NULL)
			FUNC3(1, "opening output file '%s' failed", outfile);
	}

	FUNC9(outfp, "\n/*\n");
	FUNC9(outfp, " * Generated from %s and %s (%d bytes)\n",
	    inffile == NULL ? "<notused>" : inffile, sysfile, fsize);
	FUNC9(outfp, " */\n\n");

	if (dname != NULL) {
		if (FUNC20(dname) > IFNAMSIZ)
			FUNC3(1, "selected device name '%s' is "
			    "too long (max chars: %d)", dname, IFNAMSIZ);
		FUNC9 (outfp, "#define NDIS_DEVNAME \"%s\"\n", dname);
		FUNC9 (outfp, "#define NDIS_MODNAME %s\n\n", dname);
	}

	if (inffile == NULL) {
		FUNC9 (outfp, "#ifdef NDIS_REGVALS\n");
		FUNC9 (outfp, "ndis_cfg ndis_regvals[] = {\n");
        	FUNC9 (outfp, "\t{ NULL, NULL, { 0 }, 0 }\n");
		FUNC9 (outfp, "#endif /* NDIS_REGVALS */\n");

		FUNC9 (outfp, "};\n\n");
	} else {
		fp = FUNC8(inffile, "r");
		if (fp == NULL)
			FUNC3(1, "opening .INF file '%s' failed", inffile);


		if (FUNC15(fp, outfp) != 0)
			FUNC4(1, "creating .INF file - no entries created, are you using the correct files?");
		FUNC6(fp);
	}

	FUNC9(outfp, "\n#ifdef NDIS_IMAGE\n");

	if (bin) {
		sysfile = FUNC19(FUNC0(sysfile));
		ptr = (unsigned char *)sysfile;
		while (*ptr) {
			if (*ptr == '.')
				*ptr = '_';
			ptr++;
		}
		FUNC9(outfp,
		    "\nextern unsigned char ndis_%s_drv_data_start[];\n",
		    sysfile);
		FUNC9(outfp, "static unsigned char *drv_data = "
		    "ndis_%s_drv_data_start;\n\n", sysfile);
		FUNC1(sysfile, outfile, img, fsize);
		goto done;
	}


	FUNC9(outfp, "\nextern unsigned char drv_data[];\n\n");

	FUNC9(outfp, "__asm__(\".data\");\n");
	FUNC9(outfp, "__asm__(\".globl  drv_data\");\n");
	FUNC9(outfp, "__asm__(\".type   drv_data, @object\");\n");
	FUNC9(outfp, "__asm__(\".size   drv_data, %d\");\n", fsize);
	FUNC9(outfp, "__asm__(\"drv_data:\");\n");

	ptr = img;
	cnt = 0;
	while(cnt < fsize) {
		FUNC9 (outfp, "__asm__(\".byte ");
		for (i = 0; i < 10; i++) {
			cnt++;
			if (cnt == fsize) {
				FUNC9(outfp, "0x%.2X\");\n", ptr[i]);
				goto done;
			} else {
				if (i == 9)
					FUNC9(outfp, "0x%.2X\");\n", ptr[i]);
				else
					FUNC9(outfp, "0x%.2X, ", ptr[i]);
			}
		}
		ptr += 10;
	}

done:

	FUNC9(outfp, "#endif /* NDIS_IMAGE */\n");

	if (fp != NULL)
		FUNC6(fp);
	FUNC6(outfp);
	FUNC11(img);
	FUNC5(0);
}