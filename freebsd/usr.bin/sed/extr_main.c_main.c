
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CU_FILE ;
 int CU_STRING ;
 int LC_ALL ;
 int REG_EXTENDED ;
 int _IOLBF ;
 int _IONBF ;
 int add_compunit (int ,char*) ;
 int add_file (char*) ;
 int aflag ;
 int cfclose (int ,int *) ;
 int compile () ;
 int eflag ;
 int err (int,char*) ;
 int exit (int ) ;
 scalar_t__ fclose (int ) ;
 int getopt (int,char**,char*) ;
 char* inplace ;
 int ispan ;
 char* malloc (int ) ;
 int nflag ;
 char* optarg ;
 scalar_t__ optind ;
 int process () ;
 int prog ;
 int rflags ;
 int rval ;
 int setlocale (int ,char*) ;
 int setvbuf (int ,int *,int ,int ) ;
 int stdout ;
 int strcat (char*,char*) ;
 int strcpy (char*,char*) ;
 int strlen (char*) ;
 int usage () ;
 int warnx (char*) ;

int
main(int argc, char *argv[])
{
 int c, fflag;
 char *temp_arg;

 (void) setlocale(LC_ALL, "");

 fflag = 0;
 inplace = ((void*)0);

 while ((c = getopt(argc, argv, "EI:ae:f:i:lnru")) != -1)
  switch (c) {
  case 'r':
  case 'E':
   rflags = REG_EXTENDED;
   break;
  case 'I':
   inplace = optarg;
   ispan = 1;
   break;
  case 'a':
   aflag = 1;
   break;
  case 'e':
   eflag = 1;
   if ((temp_arg = malloc(strlen(optarg) + 2)) == ((void*)0))
    err(1, "malloc");
   strcpy(temp_arg, optarg);
   strcat(temp_arg, "\n");
   add_compunit(CU_STRING, temp_arg);
   break;
  case 'f':
   fflag = 1;
   add_compunit(CU_FILE, optarg);
   break;
  case 'i':
   inplace = optarg;
   ispan = 0;
   break;
  case 'l':
   if(setvbuf(stdout, ((void*)0), _IOLBF, 0) != 0)
    warnx("setting line buffered output failed");
   break;
  case 'n':
   nflag = 1;
   break;
  case 'u':
   if(setvbuf(stdout, ((void*)0), _IONBF, 0) != 0)
    warnx("setting unbuffered output failed");
   break;
  default:
  case '?':
   usage();
  }
 argc -= optind;
 argv += optind;


 if (!eflag && !fflag && *argv) {
  add_compunit(CU_STRING, *argv);
  argv++;
 }

 compile();


 if (*argv)
  for (; *argv; argv++)
   add_file(*argv);
 else
  add_file(((void*)0));
 process();
 cfclose(prog, ((void*)0));
 if (fclose(stdout))
  err(1, "stdout");
 exit(rval);
}
