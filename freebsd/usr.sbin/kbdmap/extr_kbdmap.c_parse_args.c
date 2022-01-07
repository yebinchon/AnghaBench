
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int dir ;
 int exit (int ) ;
 int font_current ;
 int fontdir ;
 int keymapdir ;
 char* lang ;
 char* lang_default ;
 int print ;
 int show ;
 int strcmp (char*,char*) ;
 int usage () ;
 int verbose ;
 int vidcontrol (int ) ;

__attribute__((used)) static void
parse_args(int argc, char **argv)
{
 int i;

 for (i=1; i<argc; i++) {
  if (argv[i][0] != '-')
   usage();
  else if (!strcmp(argv[i], "-help") || !strcmp(argv[i], "-h"))
   usage();
  else if (!strcmp(argv[i], "-verbose") || !strcmp(argv[i], "-v"))
   verbose = 1;
  else if (!strcmp(argv[i], "-lang") || !strcmp(argv[i], "-l"))
   if (i + 1 == argc)
    usage();
   else
    lang = argv[++i];
  else if (!strcmp(argv[i], "-default") || !strcmp(argv[i], "-d"))
   lang = lang_default;
  else if (!strcmp(argv[i], "-show") || !strcmp(argv[i], "-s"))
   show = 1;
  else if (!strcmp(argv[i], "-print") || !strcmp(argv[i], "-p"))
   print = 1;
  else if (!strcmp(argv[i], "-restore") ||
      !strcmp(argv[i], "-r")) {
   vidcontrol(font_current);
   exit(0);
  } else if (!strcmp(argv[i], "-K"))
   dir = keymapdir;
  else if (!strcmp(argv[i], "-V"))
   dir = fontdir;
  else
   usage();
 }
}
