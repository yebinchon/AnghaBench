
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MAXNUM ;
 int errx (int,char*,...) ;
 scalar_t__ isblank (char) ;
 scalar_t__ isdigit (char) ;
 scalar_t__ lflag ;
 int pfract (int) ;
 int printf (char*,...) ;
 int strlen (char*) ;
 int unit (int,char*) ;

__attribute__((used)) static void
convert(char *line)
{
 int flen, len, rval;
 char *p, *fraction;

 flen = 0;
 fraction = ((void*)0);
 for (p = line; *p != '\0' && *p != '\n'; ++p) {
  if (isblank(*p)) {
   if (p == line) {
    ++line;
    continue;
   }
   goto badnum;
  }
  if (isdigit(*p))
   continue;
  switch (*p) {
  case '.':
   if (fraction != ((void*)0))
    goto badnum;
   fraction = p + 1;
   *p = '\0';
   break;
  case '-':
   if (p == line)
    break;

  default:
badnum: errx(1, "illegal number: %s", line);
   break;
  }
 }
 *p = '\0';

 if ((len = strlen(line)) > MAXNUM ||
     (fraction != ((void*)0) && ((flen = strlen(fraction)) > MAXNUM)))
  errx(1, "number too large, max %d digits.", MAXNUM);

 if (*line == '-') {
  (void)printf("minus%s", lflag ? " " : "\n");
  ++line;
  --len;
 }

 rval = len > 0 ? unit(len, line) : 0;
 if (fraction != ((void*)0) && flen != 0)
  for (p = fraction; *p != '\0'; ++p)
   if (*p != '0') {
    if (rval)
     (void)printf("%sand%s",
         lflag ? " " : "",
         lflag ? " " : "\n");
    if (unit(flen, fraction)) {
     if (lflag)
      (void)printf(" ");
     pfract(flen);
     rval = 1;
    }
    break;
   }
 if (!rval)
  (void)printf("zero%s", lflag ? "" : ".\n");
 if (lflag)
  (void)printf("\n");
}
