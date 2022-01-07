
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int ) ;
 int printf (char*) ;
 int stdout ;
 int synopsis (int ) ;

__attribute__((used)) static void
help(void)
{
 synopsis(stdout);
 printf(
     "	-Dsym=val  define preprocessor symbol with given value\n"
     "	-Dsym      define preprocessor symbol with value 1\n"
     "	-Usym	   preprocessor symbol is undefined\n"
     "	-iDsym=val \\  ignore C strings and comments\n"
     "	-iDsym      ) in sections controlled by these\n"
     "	-iUsym	   /  preprocessor symbols\n"
     "	-fpath	file containing #define and #undef directives\n"
     "	-b	blank lines instead of deleting them\n"
     "	-B	compress blank lines around deleted section\n"
     "	-c	complement (invert) keep vs. delete\n"
     "	-d	debugging mode\n"
     "	-e	ignore multiline preprocessor directives\n"
     "	-h	print help\n"
     "	-Ipath	extra include file path (ignored)\n"
     "	-K	disable && and || short-circuiting\n"
     "	-k	process constant #if expressions\n"
     "	-Mext	modify in place and keep backups\n"
     "	-m	modify input files in place\n"
     "	-n	add #line directives to output\n"
     "	-opath	output file name\n"
     "	-S	list #if control symbols with nesting\n"
     "	-s	list #if control symbols\n"
     "	-t	ignore C strings and comments\n"
     "	-V	print version\n"
     "	-x{012}	exit status mode\n"
 );
 exit(0);
}
