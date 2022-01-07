
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int strvised ;
typedef int label ;
typedef int (* fstyp_function ) (int *,char*,int) ;
struct TYPE_2__ {int unmountable; int (* function ) (int *,char*,int) ;char* name; } ;
typedef int FILE ;


 int LABEL_LEN ;
 int VIS_GLOB ;
 int VIS_NL ;
 scalar_t__ caph_enter () ;
 int err (int,char*,...) ;
 int * fopen (char*,char*) ;
 TYPE_1__* fstypes ;
 int getopt (int,char**,char*) ;
 int memset (char*,char,int) ;
 scalar_t__ optind ;
 int printf (char*,char*,...) ;
 int strsnvis (char*,int,char*,int,char*) ;
 int type_check (char*,int *) ;
 int usage () ;
 int warnx (char*,char*) ;

int
main(int argc, char **argv)
{
 int ch, error, i, nbytes;
 bool ignore_type = 0, show_label = 0, show_unmountable = 0;
 char label[LABEL_LEN + 1], strvised[LABEL_LEN * 4 + 1];
 char *path;
 FILE *fp;
 fstyp_function fstyp_f;

 while ((ch = getopt(argc, argv, "lsu")) != -1) {
  switch (ch) {
  case 'l':
   show_label = 1;
   break;
  case 's':
   ignore_type = 1;
   break;
  case 'u':
   show_unmountable = 1;
   break;
  default:
   usage();
  }
 }

 argc -= optind;
 argv += optind;
 if (argc != 1)
  usage();

 path = argv[0];

 fp = fopen(path, "r");
 if (fp == ((void*)0))
  err(1, "%s", path);

 if (caph_enter() < 0)
  err(1, "cap_enter");

 if (ignore_type == 0)
  type_check(path, fp);

 memset(label, '\0', sizeof(label));

 for (i = 0;; i++) {
  if (show_unmountable == 0 && fstypes[i].unmountable == 1)
   continue;
  fstyp_f = fstypes[i].function;
  if (fstyp_f == ((void*)0))
   break;

  error = fstyp_f(fp, label, sizeof(label));
  if (error == 0)
   break;
 }

 if (fstypes[i].name == ((void*)0)) {
  warnx("%s: filesystem not recognized", path);
  return (1);
 }

 if (show_label && label[0] != '\0') {




  nbytes = strsnvis(strvised, sizeof(strvised), label,
      VIS_GLOB | VIS_NL, "\"'$");
  if (nbytes == -1)
   err(1, "strsnvis");

  printf("%s %s\n", fstypes[i].name, strvised);
 } else {
  printf("%s\n", fstypes[i].name);
 }

 return (0);
}
