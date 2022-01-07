
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ verbose; } ;
typedef int FILE ;


 int BUFSIZ ;
 int EOF ;
 int getc (int *) ;
 scalar_t__ isspace (unsigned char) ;
 TYPE_1__ opt ;
 int printf (char*,char*) ;
 int set_option (char*) ;

__attribute__((used)) static void
scan_profile(FILE *f)
{
    int comment, i;
    char *p;
    char buf[BUFSIZ];

    while (1) {
 p = buf;
 comment = 0;
 while ((i = getc(f)) != EOF) {
     if (i == '*' && !comment && p > buf && p[-1] == '/') {
  comment = p - buf;
  *p++ = i;
     } else if (i == '/' && comment && p > buf && p[-1] == '*') {
  p = buf + comment - 1;
  comment = 0;
     } else if (isspace((unsigned char)i)) {
  if (p > buf && !comment)
      break;
     } else {
  *p++ = i;
     }
 }
 if (p != buf) {
     *p++ = 0;
     if (opt.verbose)
  printf("profile: %s\n", buf);
     set_option(buf);
 }
 else if (i == EOF)
     return;
    }
}
