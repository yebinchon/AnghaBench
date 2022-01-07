
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u_int ;
struct ypall_callback {int * data; int foreach; } ;
struct TYPE_3__ {char* alias; char* name; } ;



 int errx (int,char*,...) ;
 int exit (int ) ;
 int getopt (int,char**,char*) ;
 int key ;
 size_t nitems (TYPE_1__*) ;
 char* optarg ;
 int optind ;
 int printf (char*,char*,char*) ;
 int printit ;
 scalar_t__ strcmp (char*,char*) ;
 int usage () ;
 int yp_all (char*,char*,struct ypall_callback*) ;
 int yp_get_default_domain (char**) ;
 TYPE_1__* ypaliases ;
 int yperr_string (int) ;

int
main(int argc, char *argv[])
{
 char *domain = ((void*)0), *inmap;
 struct ypall_callback ypcb;
 int c, notrans, r;
 u_int i;

 notrans = key = 0;
 while ((c = getopt(argc, argv, "xd:kt")) != -1)
  switch (c) {
  case 'x':
   for (i = 0; i < nitems(ypaliases); i++)
    printf("Use \"%s\" for \"%s\"\n",
        ypaliases[i].alias, ypaliases[i].name);
   exit(0);
  case 'd':
   domain = optarg;
   break;
  case 't':
   notrans = 1;
   break;
  case 'k':
   key = 1;
   break;
  default:
   usage();
  }

 if (optind + 1 != argc)
  usage();

 if (domain == ((void*)0))
  yp_get_default_domain(&domain);

 inmap = argv[optind];
 if (notrans == 0) {
  for (i = 0; i < nitems(ypaliases); i++)
   if (strcmp(inmap, ypaliases[i].alias) == 0)
    inmap = ypaliases[i].name;
 }
 ypcb.foreach = printit;
 ypcb.data = ((void*)0);

 r = yp_all(domain, inmap, &ypcb);
 switch (r) {
 case 0:
  break;
 case 128:
  errx(1, "not running ypbind");
 default:
  errx(1, "no such map %s. Reason: %s",
      inmap, yperr_string(r));
 }
 exit(0);
}
