
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DIR ;


 scalar_t__ ENOENT ;
 int LC_ALL ;
 int add_charmap_posix () ;
 int bsd ;
 int byteorder ;
 int category_file () ;
 int closedir (int *) ;
 char* dirname (int ) ;
 int errf (char*,int ) ;
 scalar_t__ errno ;
 int getopt (int,char**,char*) ;
 int init_charmap () ;
 int init_collate () ;
 int init_ctype () ;
 int init_messages () ;
 int init_monetary () ;
 int init_numeric () ;
 int init_time () ;
 char* locname ;
 scalar_t__ mkdir (char*,int) ;
 int * opendir (char*) ;
 char* optarg ;
 int optind ;
 int printf (char*,...) ;
 int reset_scanner (char*) ;
 int set_wide_encoding (char*) ;
 int setlocale (int ,char*) ;
 int strerror (scalar_t__) ;
 int undefok ;
 int usage () ;
 scalar_t__ verbose ;
 scalar_t__ warnings ;
 int warnok ;
 scalar_t__ yydebug ;
 int yyparse () ;

int
main(int argc, char **argv)
{
 int c;
 char *lfname = ((void*)0);
 char *cfname = ((void*)0);
 char *wfname = ((void*)0);
 DIR *dir;

 init_charmap();
 init_collate();
 init_ctype();
 init_messages();
 init_monetary();
 init_numeric();
 init_time();

 yydebug = 0;

 (void) setlocale(LC_ALL, "");

 while ((c = getopt(argc, argv, "blw:i:cf:u:vUD")) != -1) {
  switch (c) {
  case 'D':
   bsd = 1;
   break;
  case 'b':
  case 'l':
   if (byteorder != 0)
    usage();
   byteorder = c == 'b' ? 4321 : 1234;
   break;
  case 'v':
   verbose++;
   break;
  case 'i':
   lfname = optarg;
   break;
  case 'u':
   set_wide_encoding(optarg);
   break;
  case 'f':
   cfname = optarg;
   break;
  case 'U':
   undefok++;
   break;
  case 'c':
   warnok++;
   break;
  case 'w':
   wfname = optarg;
   break;
  case '?':
   usage();
   break;
  }
 }

 if ((argc - 1) != (optind)) {
  usage();
 }
 locname = argv[argc - 1];
 if (verbose) {
  (void) printf("Processing locale %s.\n", locname);
 }

 if (cfname) {
  if (verbose)
   (void) printf("Loading charmap %s.\n", cfname);
  reset_scanner(cfname);
  (void) yyparse();
 }

 if (wfname) {
  if (verbose)
   (void) printf("Loading widths %s.\n", wfname);
  reset_scanner(wfname);
  (void) yyparse();
 }

 if (verbose) {
  (void) printf("Loading POSIX portable characters.\n");
 }
 add_charmap_posix();

 if (lfname) {
  reset_scanner(lfname);
 } else {
  reset_scanner(((void*)0));
 }


 if (!bsd) {
  while ((dir = opendir(locname)) == ((void*)0)) {
   if ((errno != ENOENT) ||
       (mkdir(locname, 0755) < 0)) {
    errf("%s", strerror(errno));
   }
  }
  (void) closedir(dir);
  (void) mkdir(dirname(category_file()), 0755);
 }

 (void) yyparse();
 if (verbose) {
  (void) printf("All done.\n");
 }
 return (warnings ? 1 : 0);
}
