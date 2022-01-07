
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Aflag ;
 int Dflag ;
 int Hflag ;
 scalar_t__ Lflag ;
 int Nflag ;
 int Rflag ;
 int aflag ;
 int append_variable (char*,int *) ;
 int attrib ;
 int bflag ;
 int delete_variable (char*) ;
 int dflag ;
 int errx (int,char*) ;
 int free (scalar_t__) ;
 scalar_t__ fromfile ;
 int getopt_long (int,char**,char*,int ,int *) ;
 int gflag ;
 int lflag ;
 int load_opt_flag ;
 int longopts ;
 char* optarg ;
 scalar_t__ optind ;
 int pflag ;
 int print_known_guid () ;
 int print_var (int *,int *) ;
 int print_variable (char*) ;
 int print_variables () ;
 scalar_t__ strdup (char*) ;
 int strtoul (char*,int *,int) ;
 int uflag ;
 int usage () ;
 char* varname ;
 int warnx (char*) ;
 int wflag ;
 int write_variable (char*,int *) ;

__attribute__((used)) static void
parse_args(int argc, char **argv)
{
 int ch, i;

 while ((ch = getopt_long(argc, argv, "aAbdDf:gHlLNn:OpRt:uw",
      longopts, ((void*)0))) != -1) {
  switch (ch) {
  case 'a':
   aflag++;
   break;
  case 'A':
   Aflag++;
   break;
  case 'b':
   bflag++;
   break;
  case 'd':
   dflag++;
   break;
  case 'D':
   Dflag++;
   break;
  case 'g':
   gflag++;
   break;
  case 'H':
   Hflag++;
   break;
  case 'l':
   lflag++;
   break;
  case 'L':
   Lflag++;
   break;
  case 'n':
   varname = optarg;
   break;
  case 'N':
   Nflag++;
   break;
  case 'O':
   load_opt_flag++;
   break;
  case 'p':
   pflag++;
   break;
  case 'R':
   Rflag++;
   break;
  case 't':
   attrib = strtoul(optarg, ((void*)0), 16);
   break;
  case 'u':
   uflag++;
   break;
  case 'w':
   wflag++;
   break;
  case 'f':
   free(fromfile);
   fromfile = strdup(optarg);
   break;
  case 0:
   errx(1, "unknown or unimplemented option\n");
   break;
  default:
   usage();
  }
 }
 argc -= optind;
 argv += optind;

 if (argc == 1)
  varname = argv[0];

 if (aflag + Dflag + wflag > 1) {
  warnx("Can only use one of -a (--append), "
      "-D (--delete) and -w (--write)");
  usage();
 }

 if (aflag + Dflag + wflag > 0 && varname == ((void*)0)) {
  warnx("Must specify a variable for -a (--append), "
      "-D (--delete) or -w (--write)");
  usage();
 }

 if (aflag)
  append_variable(varname, ((void*)0));
 else if (Dflag)
  delete_variable(varname);
 else if (wflag)
  write_variable(varname, ((void*)0));
 else if (Lflag)
  print_known_guid();
 else if (fromfile) {
  Nflag = 1;
  print_var(((void*)0), ((void*)0));
 } else if (varname) {
  pflag++;
  print_variable(varname);
 } else if (argc > 0) {
  pflag++;
  for (i = 0; i < argc; i++)
   print_variable(argv[i]);
 } else
  print_variables();
}
