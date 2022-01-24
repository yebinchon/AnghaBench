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
struct keymap {char* desc; } ;
typedef  int /*<<< orphan*/  choice ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char**,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct keymap*) ; 
 int /*<<< orphan*/  FUNC3 (struct keymap*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (char*,int,int /*<<< orphan*/ *) ; 
 char* font ; 
 char* font_current ; 
 int /*<<< orphan*/ * FUNC7 (char*,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 scalar_t__ FUNC10 (scalar_t__) ; 
 int /*<<< orphan*/  menu ; 
 int FUNC11 (char*) ; 
 char* program ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC13 (char*,char*) ; 
 scalar_t__ FUNC14 (char*,char*) ; 
 int /*<<< orphan*/  FUNC15 (char*,char*) ; 
 scalar_t__ FUNC16 (char*) ; 
 int /*<<< orphan*/  FUNC17 (char*) ; 
 int /*<<< orphan*/  FUNC18 (char*) ; 

__attribute__((used)) static void
FUNC19(struct keymap **km_sorted, int num_keymaps)
{
	FILE *fp;
	char *cmd, *dialog;
	char tmp_name[] = "/tmp/_kbd_lang.XXXX";
	int fd, i, size;

	fd = FUNC11(tmp_name);
	if (fd == -1) {
		FUNC8(stderr, "Could not open temporary file \"%s\"\n",
		    tmp_name);
		FUNC4(1);
	}
	FUNC0(&dialog, "/usr/bin/dialog --clear --title \"Keyboard Menu\" "
			  "--menu \"%d\" 0 0 0", menu);

	/* start right font, assume that current font is equal
	 * to default font in /etc/rc.conf
	 *	
	 * $font is the font which require the language $lang; e.g.
	 * russian *need* a koi8 font
	 * $font_current is the current font from /etc/rc.conf
	 */
	if (font && FUNC14(font, font_current))
		FUNC18(font);

	/* Build up the command */
	size = 0;
	for (i=0; i<num_keymaps; i++) {
		/*
		 * Each 'font' is passed as ' "font" ""', so allow the
		 * extra space
		 */
		size += FUNC16(km_sorted[i]->desc) + 6;
	}

	/* Allow the space for '2> tmpfilename' redirection */
	size += FUNC16(tmp_name) + 3;

	cmd = (char *) FUNC10(FUNC16(dialog) + size + 1);
	FUNC15(cmd, dialog);

	for (i=0; i<num_keymaps; i++) {
		FUNC13(cmd, " \"");
		FUNC13(cmd, km_sorted[i]->desc);
		FUNC13(cmd, "\"");
		FUNC13(cmd, " \"\"");
	}

	FUNC13(cmd, " 2>");
	FUNC13(cmd, tmp_name);

	/* Show the dialog.. */
	FUNC17(cmd);

	fp = FUNC7(tmp_name, "r");
	if (fp) {
		char choice[64];
		if (FUNC6(choice, sizeof(choice), fp) != NULL) {
			/* Find key for desc */
			for (i=0; i<num_keymaps; i++) {
				if (!FUNC14(choice, km_sorted[i]->desc)) {
					if (!FUNC14(program, "kbdmap"))
						FUNC2(km_sorted[i]);
					else
						FUNC3(km_sorted[i]);
					break;
				}
			}
		} else {
			if (font != NULL && FUNC14(font, font_current))
				/* Cancelled, restore old font */
				FUNC18(font_current);
		}
		FUNC5(fp);
	} else
		FUNC8(stderr, "Failed to open temporary file");

	/* Tidy up */
	FUNC12(tmp_name);
	FUNC9(cmd);
	FUNC9(dialog);
	FUNC1(fd);
}