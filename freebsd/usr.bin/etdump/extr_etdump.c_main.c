
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct outputter {int dummy; } ;
struct option {char* member_0; float member_3; int * member_2; int const member_1; } ;
typedef int FILE ;


 int dump_eltorito (int *,char*,int *,struct outputter*) ;
 int err (int,char*,char*) ;
 int * fopen (char*,char*) ;
 int getopt_long (int,char**,char*,struct option*,int *) ;
 char* optarg ;
 scalar_t__ optind ;
 struct outputter* output_shell ;
 struct outputter* output_text ;

 int * stdin ;
 int * stdout ;
 scalar_t__ strcmp (char*,char*) ;
 int usage (char*) ;

int
main(int argc, char **argv)
{
 int ch, i;
 FILE *outfile, *iso;
 struct outputter *outputter;

 outfile = stdout;
 outputter = output_text;

 static struct option longopts[] = {
  { "format", 128, ((void*)0), 'f' },
  { "output", 128, ((void*)0), 'o' },
  { ((void*)0), 0, ((void*)0), 0 },
 };

 while ((ch = getopt_long(argc, argv, "f:o:", longopts, ((void*)0))) != -1) {
  switch (ch) {
  case 'f':
   if (strcmp(optarg, "shell") == 0)
    outputter = output_shell;
   else if (strcmp(optarg, "text") == 0)
    outputter = output_text;
   else
    usage(argv[0]);
   break;
  case 'o':
   if (strcmp(optarg, "-") == 0) {
    outfile = stdout;
   } else if ((outfile = fopen(optarg, "w")) == ((void*)0)) {
    err(1, "unable to open %s for output", optarg);
   }
   break;
  default:
   usage(argv[0]);
  }
 }

 argc -= optind;
 argv += optind;

 for (i = 0; i < argc; i++) {
  if (strcmp(argv[i], "-") == 0) {
   iso = stdin;
  } else {
   iso = fopen(argv[i], "r");
   if (iso == ((void*)0))
    err(1, "could not open %s", argv[1]);
  }
  dump_eltorito(iso, argv[i], outfile, outputter);
 }
}
