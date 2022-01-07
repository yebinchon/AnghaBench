
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 char* dvname ;
 int errx (int,char*) ;
 char* getenv (char*) ;
 scalar_t__ getfactorypr () ;
 scalar_t__ getoempr () ;
 int getplr () ;
 int printf (char*,int) ;
 char* progname ;
 int setoempr (int ) ;
 int setplr () ;
 scalar_t__ strcasecmp (char*,char*) ;
 scalar_t__ strcmp (char*,char*) ;
 scalar_t__ strtoull (char*,int *,int ) ;
 int usage () ;

int
main(int argc, char *argv[])
{
 dvname = getenv("CFI");
 if (dvname == ((void*)0))
  dvname = "/dev/cfi0";
 progname = argv[0];
 if (argc > 1) {
  if (strcmp(argv[1], "-f") == 0) {
   if (argc < 2)
    errx(1, "missing device name for -f option");
   dvname = argv[2];
   argc -= 2, argv += 2;
  } else if (strcmp(argv[1], "-?") == 0)
   usage();
 }
 for (; argc > 1; argc--, argv++) {
  if (strcasecmp(argv[1], "fact") == 0) {
   printf("0x%llx\n", (unsigned long long) getfactorypr());
  } else if (strcasecmp(argv[1], "oem") == 0) {
   printf("0x%llx\n", (unsigned long long) getoempr());
  } else if (strcasecmp(argv[1], "woem") == 0) {
   if (argc < 2)
    errx(1, "missing value for woem");
   setoempr((uint64_t) strtoull(argv[2], ((void*)0), 0));
   argc--, argv++;
  } else if (strcasecmp(argv[1], "plr") == 0) {
   printf("0x%x\n", getplr());
  } else if (strcasecmp(argv[1], "wplr") == 0) {
   setplr();
  } else
   usage();
 }
}
