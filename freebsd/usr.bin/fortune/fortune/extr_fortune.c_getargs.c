
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* All_forts ;
 int Debug ;
 void* Equal_probs ;
 void* FALSE ;
 void* Find_files ;
 void* Long_only ;
 void* Match ;
 void* Offend ;
 int REG_BASIC ;
 int Re_pat ;
 void* Short_only ;
 void* TRUE ;
 void* Wait ;
 char* conv_pat (char*) ;
 int exit (int) ;
 int form_file_list (char**,int) ;
 int fprintf (int ,char*,char*) ;
 int getopt (int,char**,char*) ;
 char* optarg ;
 scalar_t__ optind ;
 int print_file_list () ;
 int regcomp (int *,char*,int ) ;
 int stderr ;
 int usage () ;

__attribute__((used)) static void
getargs(int argc, char *argv[])
{
 int ignore_case;
 char *pat;
 int ch;

 ignore_case = FALSE;
 pat = ((void*)0);




 while ((ch = getopt(argc, argv, "aefilm:osw")) != -1)

  switch(ch) {
  case 'a':
   All_forts = TRUE;
   break;





  case 'e':
   Equal_probs = TRUE;
   break;
  case 'f':
   Find_files = TRUE;
   break;
  case 'l':
   Long_only = TRUE;
   Short_only = FALSE;
   break;
  case 'o':
   Offend = TRUE;
   break;
  case 's':
   Short_only = TRUE;
   Long_only = FALSE;
   break;
  case 'w':
   Wait = TRUE;
   break;
  case 'm':
   Match = TRUE;
   pat = optarg;
   break;
  case 'i':
   ignore_case++;
   break;
  case '?':
  default:
   usage();
  }
 argc -= optind;
 argv += optind;

 if (!form_file_list(argv, argc))
  exit(1);
 if (Find_files) {
  print_file_list();
  exit(0);
 }





 if (pat != ((void*)0)) {
  int error;

  if (ignore_case)
   pat = conv_pat(pat);
  error = regcomp(&Re_pat, pat, REG_BASIC);
  if (error) {
   fprintf(stderr, "regcomp(%s) fails\n", pat);
   exit(1);
  }
 }
}
