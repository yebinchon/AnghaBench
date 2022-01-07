
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EXIT_FAILURE ;
 char* OPTFMT ;
 scalar_t__ debug ;
 int exit (int ) ;
 int fprintf (int ,char*,...) ;
 char* pgm ;
 int stderr ;

__attribute__((used)) static void
usage(void)
{

 if (debug)
  exit(EXIT_FAILURE);

 fprintf(stderr, "Usage: %s [options] bytes:label\n", pgm);
 fprintf(stderr, "       %s [options] -m bytes1:label1 path1 "
     "[bytes2:label2 path2 ...]\n", pgm);
 fprintf(stderr, "OPTIONS:\n");

 fprintf(stderr, "\t%-14s %s\n", "-a text",
     "Append text. Displayed below file progress indicators.");
 fprintf(stderr, "\t%-14s %s\n", "-b backtitle",
     "String to be displayed on the backdrop, at top-left.");
 fprintf(stderr, "\t%-14s %s\n", "-d",
     "Debug. Write to standard output instead of dialog.");
 fprintf(stderr, "\t%-14s %s\n", "-D",
     "Use dialog(1) instead of dialog(3) [default].");
 fprintf(stderr, "\t%-14s %s\n", "-h",
     "Produce this output on standard error and exit.");
 fprintf(stderr, "\t%-14s %s\n", "-i format",
     "Customize status line format. See fdpv(1) for details.");
 fprintf(stderr, "\t%-14s %s\n", "-I format",
     "Customize status line format. See fdpv(1) for details.");
 fprintf(stderr, "\t%-14s %s\n", "-L size",
     "Label size. Must be a number greater than 0, or -1.");
 fprintf(stderr, "\t%-14s %s\n", "-m",
     "Enable processing of multiple file argiments.");
 fprintf(stderr, "\t%-14s %s\n", "-n num",
     "Display at-most num files per screen. Default is -1.");
 fprintf(stderr, "\t%-14s %s\n", "-N",
     "No overrun. Stop reading input at stated length, if any.");
 fprintf(stderr, "\t%-14s %s\n", "-o file",
     "Output data to file. First %s replaced with label text.");
 fprintf(stderr, "\t%-14s %s\n", "-p text",
     "Prefix text. Displayed above file progress indicators.");
 fprintf(stderr, "\t%-14s %s\n", "-P size",
     "Mini-progressbar size. Must be a number greater than 3.");
 fprintf(stderr, "\t%-14s %s\n", "-t title",
     "Title string to be displayed at top of dialog(1) box.");
 fprintf(stderr, "\t%-14s %s\n", "-T",
     "Test mode. Don't actually read any data, but fake it.");
 fprintf(stderr, "\t%-14s %s\n", "-U num",
     "Update status line num times per-second. Default is 2.");
 fprintf(stderr, "\t%-14s %s\n", "-w",
     "Wide. Width of `-p' and `-a' text bump dialog(1) width.");
 fprintf(stderr, "\t%-14s %s\n", "-x cmd",
     "Send data to executed cmd. First %s replaced with label.");
 fprintf(stderr, "\t%-14s %s\n", "-X",
     "X11. Use Xdialog(1) instead of dialog(1).");
 exit(EXIT_FAILURE);
}
