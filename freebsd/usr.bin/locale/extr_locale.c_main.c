
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t uint ;
struct TYPE_3__ {char* name; } ;


 int LC_ALL ;
 int all_charmaps ;
 int all_locales ;
 int exit (int ) ;
 int getopt (int,char**,char*) ;
 TYPE_1__* kwinfo ;
 int list_charmaps () ;
 int list_locales () ;
 size_t nitems (TYPE_1__*) ;
 scalar_t__ optind ;
 int prt_categories ;
 int prt_keywords ;
 int setlocale (int ,char*) ;
 int showdetails (char*) ;
 int showkeywordslist (char*) ;
 int showlocale () ;
 scalar_t__ strcasecmp (char*,char*) ;
 int usage () ;

int
main(int argc, char *argv[])
{
 int ch;
 int tmp;

 while ((ch = getopt(argc, argv, "ackms:")) != -1) {
  switch (ch) {
  case 'a':
   all_locales = 1;
   break;
  case 'c':
   prt_categories = 1;
   break;
  case 'k':
   prt_keywords = 1;
   break;
  case 'm':
   all_charmaps = 1;
   break;
  default:
   usage();
  }
 }
 argc -= optind;
 argv += optind;


 if (all_locales && all_charmaps)
  usage();
 if ((all_locales || all_charmaps) && argc > 0)
  usage();
 if ((all_locales || all_charmaps) && (prt_categories || prt_keywords))
  usage();


 if (all_locales) {
  list_locales();
  exit(0);
 }


 if (all_charmaps) {
  list_charmaps();
  exit(0);
 }


 tmp = 0;
 if (prt_keywords && argc > 0)
  while (tmp < argc)
   if (strcasecmp(argv[tmp++], "list") == 0) {
    showkeywordslist(argv[tmp]);
    exit(0);
   }


 if (prt_categories || prt_keywords || argc > 0) {
  if (prt_keywords || argc > 0)
   setlocale(LC_ALL, "");
  if (argc > 0) {
   while (argc > 0) {
    showdetails(*argv);
    argv++;
    argc--;
   }
  } else {
   uint i;
   for (i = 0; i < nitems(kwinfo); i++)
    showdetails(kwinfo[i].name);
  }
  exit(0);
 }


 showlocale();

 return (0);
}
