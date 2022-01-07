
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;
typedef int BIGNUM ;


 int BN_CTX_new () ;
 scalar_t__ BN_dec2bn (int **,char*) ;
 scalar_t__ BN_hex2bn (int **,char*) ;
 int * BN_new () ;
 int LINE_MAX ;
 int ctx ;
 int err (int,char*) ;
 int errx (int,char*,...) ;
 int exit (int ) ;
 scalar_t__ ferror (int ) ;
 int * fgets (char*,int,int ) ;
 int getopt (int,char**,char*) ;
 int hflag ;
 scalar_t__ isblank (char) ;
 scalar_t__ optind ;
 int pr_fact (int *) ;
 int stdin ;
 int usage () ;

int
main(int argc, char *argv[])
{
 BIGNUM *val;
 int ch;
 char *p, buf[LINE_MAX];

 ctx = BN_CTX_new();
 val = BN_new();
 if (val == ((void*)0))
  errx(1, "can't initialise bignum");

 while ((ch = getopt(argc, argv, "h")) != -1)
  switch (ch) {
  case 'h':
   hflag++;
   break;
  case '?':
  default:
   usage();
  }
 argc -= optind;
 argv += optind;


 if (argc == 0)
  for (;;) {
   if (fgets(buf, sizeof(buf), stdin) == ((void*)0)) {
    if (ferror(stdin))
     err(1, "stdin");
    exit (0);
   }
   for (p = buf; isblank(*p); ++p);
   if (*p == '\n' || *p == '\0')
    continue;
   if (*p == '-')
    errx(1, "negative numbers aren't permitted.");
   if (BN_dec2bn(&val, buf) == 0 &&
       BN_hex2bn(&val, buf) == 0)
    errx(1, "%s: illegal numeric format.", buf);
   pr_fact(val);
  }

 else
  for (; *argv != ((void*)0); ++argv) {
   if (argv[0][0] == '-')
    errx(1, "negative numbers aren't permitted.");
   if (BN_dec2bn(&val, argv[0]) == 0 &&
       BN_hex2bn(&val, argv[0]) == 0)
    errx(1, "%s: illegal numeric format.", argv[0]);
   pr_fact(val);
  }
 exit(0);
}
