
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int chkattached (char*) ;
 int dump_bar (char*,char*,char*,char*,int,int) ;
 int exitstatus ;
 int getopt (int,char**,char*) ;
 int list_devs (char*,int,int,int,int,int,int) ;
 int optind ;
 int readit (char*,char*,int) ;
 int usage () ;
 int writeit (char*,char*,char*,int) ;

int
main(int argc, char **argv)
{
 int c, width;
 int listmode, readmode, writemode, attachedmode, dumpbarmode;
 int bars, bridge, caps, errors, verbose, vpd;

 listmode = readmode = writemode = attachedmode = dumpbarmode = 0;
 bars = bridge = caps = errors = verbose = vpd= 0;
 width = 4;

 while ((c = getopt(argc, argv, "aBbcDehlrwVv")) != -1) {
  switch(c) {
  case 'a':
   attachedmode = 1;
   break;

  case 'B':
   bridge = 1;
   break;

  case 'b':
   bars = 1;
   width = 1;
   break;

  case 'c':
   caps = 1;
   break;

  case 'D':
   dumpbarmode = 1;
   break;

  case 'e':
   errors = 1;
   break;

  case 'h':
   width = 2;
   break;

  case 'l':
   listmode = 1;
   break;

  case 'r':
   readmode = 1;
   break;

  case 'w':
   writemode = 1;
   break;

  case 'v':
   verbose = 1;
   break;

  case 'V':
   vpd = 1;
   break;

  case 'x':
   width = 8;
   break;

  default:
   usage();
  }
 }

 if ((listmode && optind >= argc + 1)
     || (writemode && optind + 3 != argc)
     || (readmode && optind + 2 != argc)
     || (attachedmode && optind + 1 != argc)
     || (dumpbarmode && (optind + 2 > argc || optind + 4 < argc))
     || (width == 8 && !dumpbarmode))
  usage();

 if (listmode) {
  list_devs(optind + 1 == argc ? argv[optind] : ((void*)0), verbose,
      bars, bridge, caps, errors, vpd);
 } else if (attachedmode) {
  chkattached(argv[optind]);
 } else if (readmode) {
  readit(argv[optind], argv[optind + 1], width);
 } else if (writemode) {
  writeit(argv[optind], argv[optind + 1], argv[optind + 2],
      width);
 } else if (dumpbarmode) {
  dump_bar(argv[optind], argv[optind + 1],
      optind + 2 < argc ? argv[optind + 2] : ((void*)0),
      optind + 3 < argc ? argv[optind + 3] : ((void*)0),
      width, verbose);
 } else {
  usage();
 }

 return (exitstatus);
}
