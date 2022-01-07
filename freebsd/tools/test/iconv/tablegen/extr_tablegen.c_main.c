
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iconv_fallbacks {int * data; int wc_to_mb_fallback; int mb_to_uc_fallback; int mb_to_wc_fallback; int uc_to_mb_fallback; } ;
typedef int iconv_t ;


 int EXIT_SUCCESS ;
 int ICONV_SET_FALLBACKS ;
 int asprintf (char**,char*,char*,char*,char*) ;
 int cflag ;
 char* citrus_common ;
 int dflag ;
 int do_conv (int ,int) ;
 int err (int,int *) ;
 char getopt_long (int,char**,int ,int ,int *) ;
 scalar_t__ iconv_close (int ) ;
 int iconv_open (char*,char*) ;
 scalar_t__ iconvctl (int ,int ,struct iconv_fallbacks*) ;
 int iflag ;
 int lflag ;
 int long_options ;
 int mb_to_uc_fb ;
 int mb_to_wc_fb ;
 scalar_t__ optind ;
 int optstr ;
 int printf (char*,...) ;
 int rflag ;
 int tflag ;
 int uc_to_mb_fb ;
 int usage () ;
 int wc_to_mb_fb ;

int
main (int argc, char *argv[])
{
 struct iconv_fallbacks fbs;
 iconv_t cd;
 char *tocode;
 char c;

 while (((c = getopt_long(argc, argv, optstr, long_options, ((void*)0))) != -1)) {
  switch (c) {
  case 'c':
   cflag = 1;
   break;
  case 'd':
   dflag = 1;
   break;
  case 'i':
   iflag = 1;
   break;
  case 'l':
   lflag = 1;
   break;
  case 'r':
   rflag = 1;
   break;
  case 't':
   tflag = 1;
   break;
  }
 }
 argc -= optind;
 argv += optind;

 if (argc < 1)
  usage();

 fbs.uc_to_mb_fallback = uc_to_mb_fb;
 fbs.mb_to_wc_fallback = mb_to_wc_fb;
 fbs.mb_to_uc_fallback = mb_to_uc_fb;
 fbs.wc_to_mb_fallback = wc_to_mb_fb;
 fbs.data = ((void*)0);

 if (argc == 2) {
  asprintf(&tocode, "%s%s%s", argv[1], tflag ? "//TRASNLIT" : "",
      iflag ? "//IGNORE" : "");

  if ((cd = iconv_open(tocode, argv[0])) == (iconv_t)-1)
   err(1, ((void*)0));
  if (dflag) {
   if (iconvctl(cd, ICONV_SET_FALLBACKS, &fbs) != 0)
    err(1, ((void*)0));
  }
  do_conv(cd, 0);
 } else if (rflag) {
  asprintf(&tocode, "%s%s%s", argv[0], tflag ? "//TRANSLIT" : "",
      iflag ? "//IGNORE" : "");

  if ((cd = iconv_open(tocode, "UTF-32LE")) == (iconv_t)-1)
   err(1, ((void*)0));
  if (dflag && iconvctl(cd, ICONV_SET_FALLBACKS, &fbs) != 0)
   err(1, ((void*)0));
  if (cflag) {
   printf("# $FreeBSD$\n\n");
   printf("TYPE\t\tROWCOL\n");
   printf("NAME\t\tUCS/%s\n", argv[0]);
   printf("%s", citrus_common);
  }
  do_conv(cd, 1);
 } else {
  if ((cd = iconv_open("UTF-32LE//TRANSLIT", argv[0])) == (iconv_t)-1)
   err(1, ((void*)0));
  if (dflag && (iconvctl(cd, ICONV_SET_FALLBACKS, &fbs) != 0))
   err(1, ((void*)0));
  if (cflag) {
   printf("# $FreeBSD$\n\n");
   printf("TYPE\t\tROWCOL\n");
   printf("NAME\t\t%s/UCS\n", argv[0]);
   printf("%s", citrus_common);
                }
  do_conv(cd, 0);
 }

 if (iconv_close(cd) != 0)
  err(1, ((void*)0));

 return (EXIT_SUCCESS);
}
