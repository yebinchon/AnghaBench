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

/* Variables and functions */
 int /*<<< orphan*/  EXIT_FAILURE ; 
 char* OPTFMT ; 
 scalar_t__ debug ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 char* pgm ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void
FUNC2(void)
{

	if (debug) /* No need for usage */
		FUNC0(EXIT_FAILURE);

	FUNC1(stderr, "Usage: %s [options] bytes:label\n", pgm);
	FUNC1(stderr, "       %s [options] -m bytes1:label1 path1 "
	    "[bytes2:label2 path2 ...]\n", pgm);
	FUNC1(stderr, "OPTIONS:\n");
#define OPTFMT "\t%-14s %s\n"
	FUNC1(stderr, OPTFMT, "-a text",
	    "Append text. Displayed below file progress indicators.");
	FUNC1(stderr, OPTFMT, "-b backtitle",
	    "String to be displayed on the backdrop, at top-left.");
	FUNC1(stderr, OPTFMT, "-d",
	    "Debug. Write to standard output instead of dialog.");
	FUNC1(stderr, OPTFMT, "-D",
	    "Use dialog(1) instead of dialog(3) [default].");
	FUNC1(stderr, OPTFMT, "-h",
	    "Produce this output on standard error and exit.");
	FUNC1(stderr, OPTFMT, "-i format",
	    "Customize status line format. See fdpv(1) for details.");
	FUNC1(stderr, OPTFMT, "-I format",
	    "Customize status line format. See fdpv(1) for details.");
	FUNC1(stderr, OPTFMT, "-L size",
	    "Label size. Must be a number greater than 0, or -1.");
	FUNC1(stderr, OPTFMT, "-m",
	    "Enable processing of multiple file argiments.");
	FUNC1(stderr, OPTFMT, "-n num",
	    "Display at-most num files per screen. Default is -1.");
	FUNC1(stderr, OPTFMT, "-N",
	    "No overrun. Stop reading input at stated length, if any.");
	FUNC1(stderr, OPTFMT, "-o file",
	    "Output data to file. First %s replaced with label text.");
	FUNC1(stderr, OPTFMT, "-p text",
	    "Prefix text. Displayed above file progress indicators.");
	FUNC1(stderr, OPTFMT, "-P size",
	    "Mini-progressbar size. Must be a number greater than 3.");
	FUNC1(stderr, OPTFMT, "-t title",
	    "Title string to be displayed at top of dialog(1) box.");
	FUNC1(stderr, OPTFMT, "-T",
	    "Test mode. Don't actually read any data, but fake it.");
	FUNC1(stderr, OPTFMT, "-U num",
	    "Update status line num times per-second. Default is 2.");
	FUNC1(stderr, OPTFMT, "-w",
	    "Wide. Width of `-p' and `-a' text bump dialog(1) width.");
	FUNC1(stderr, OPTFMT, "-x cmd",
	    "Send data to executed cmd. First %s replaced with label.");
	FUNC1(stderr, OPTFMT, "-X",
	    "X11. Use Xdialog(1) instead of dialog(1).");
	FUNC0(EXIT_FAILURE);
}