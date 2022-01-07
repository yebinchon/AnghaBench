
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_int32_t ;
typedef int u_int ;
typedef int oid ;
typedef int ndebug ;
typedef int debug ;
struct TYPE_3__ {int bit; int name; } ;


 int N (TYPE_1__*) ;
 int err (int,char*,char*) ;
 int errx (int,char*,...) ;
 TYPE_1__* flags ;
 int get_orig_iface_name (char*,int,char*) ;
 int getflag (char const*,int) ;
 scalar_t__ isdigit (int) ;
 int printf (char*,...) ;
 char* progname ;
 int setoid (char*,int,char*) ;
 scalar_t__ strcmp (char*,char*) ;
 int strtoul (char const*,int *,int ) ;
 scalar_t__ sysctlbyname (char*,int*,size_t*,int*,int) ;
 int usage () ;

int
main(int argc, char *argv[])
{
 const char *cp, *tp;
 const char *sep;
 int op, i;
 u_int32_t debug, ndebug;
 size_t debuglen;
 char oid[256];

 progname = argv[0];
 setoid(oid, sizeof(oid), "wlan0");
 if (argc > 1) {
  if (strcmp(argv[1], "-d") == 0) {
   setoid(oid, sizeof(oid), ((void*)0));
   argc -= 1, argv += 1;
  } else if (strcmp(argv[1], "-i") == 0) {
   if (argc <= 2)
    errx(1, "missing interface name for -i option");
   get_orig_iface_name(oid, sizeof(oid), argv[2]);
   argc -= 2, argv += 2;
  } else if (strcmp(argv[1], "-?") == 0)
   usage();
 }

 debuglen = sizeof(debug);
 if (sysctlbyname(oid, &debug, &debuglen, ((void*)0), 0) < 0)
  err(1, "sysctl-get(%s)", oid);
 ndebug = debug;
 for (; argc > 1; argc--, argv++) {
  cp = argv[1];
  do {
   u_int bit;

   if (*cp == '-') {
    cp++;
    op = -1;
   } else if (*cp == '+') {
    cp++;
    op = 1;
   } else
    op = 0;
   for (tp = cp; *tp != '\0' && *tp != '+' && *tp != '-';)
    tp++;
   bit = getflag(cp, tp-cp);
   if (op < 0)
    ndebug &= ~bit;
   else if (op > 0)
    ndebug |= bit;
   else {
    if (bit == 0) {
     int c = *cp;
     if (isdigit(c))
      bit = strtoul(cp, ((void*)0), 0);
     else
      errx(1, "unknown flag %.*s",
       (int)(tp-cp), cp);
    }
    ndebug = bit;
   }
  } while (*(cp = tp) != '\0');
 }
 if (debug != ndebug) {
  printf("%s: 0x%x => ", oid, debug);
  if (sysctlbyname(oid, ((void*)0), ((void*)0), &ndebug, sizeof(ndebug)) < 0)
   err(1, "sysctl-set(%s)", oid);
  printf("0x%x", ndebug);
  debug = ndebug;
 } else
  printf("%s: 0x%x", oid, debug);
 sep = "<";
 for (i = 0; i < N(flags); i++)
  if (debug & flags[i].bit) {
   printf("%s%s", sep, flags[i].name);
   sep = ",";
  }
 printf("%s\n", *sep != '<' ? ">" : "");
 return 0;
}
