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
typedef  int /*<<< orphan*/  font_t ;

/* Variables and functions */
 int /*<<< orphan*/  DKGREY ; 
 int M_NO_SCROLL ; 
 int /*<<< orphan*/  SOLID ; 
 int /*<<< orphan*/  WHITE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  font_ibm ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  font_italic ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  font_min ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 

int FUNC7(void)
{
    font_t ibm_font, italic_font, min_font;
    int i;

    /* First, init the font system */
    FUNC1();

    /* Load all the fonts that we can */
    ibm_font = FUNC2(font_ibm);  /* 96 tiles */
    italic_font = FUNC2(font_italic);   /* 93 tiles */
    
    /* Load this one with dk grey background and white foreground */
    FUNC0(WHITE, DKGREY, SOLID);
    
    min_font = FUNC2(font_min);

    /* Turn scrolling off (why not?) */
    FUNC5(FUNC4() | M_NO_SCROLL);

    /* Print some text! */
    
    /* IBM font */
    FUNC3(ibm_font);
    FUNC6("Font demo.\n\n");

    FUNC6("IBM Font #!?123\n");

    /* In italic */
    FUNC3(italic_font);
    for (i=1; i!=5; i++) {
	FUNC6("In italics, line %u\n", i);
    }

    /* With a minimal, colour changed font */
    FUNC3(min_font);
    FUNC6("Minimal 36 tile font\n");

    /* Done */
    FUNC3(ibm_font);
    FUNC6("\nDone!");
}