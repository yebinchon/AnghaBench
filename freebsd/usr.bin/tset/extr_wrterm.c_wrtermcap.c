
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int errx (int,char*) ;
 scalar_t__ isspace (int) ;
 int printf (char*,...) ;
 int putchar (char) ;
 char* strchr (char*,char) ;
 char* strdup (char*) ;
 int * strpbrk (char*,char*) ;
 char* strsep (char**,char*) ;

void
wrtermcap(char *bp)
{
 register int ch;
 register char *p;
 char *t, *sep;


 if ((t = strchr(bp, ':')) == ((void*)0))
  errx(1, "termcap names not colon terminated");
 *t++ = '\0';


 sep = strdup("");
 while ((p = strsep(&bp, "|")) != ((void*)0))
  if (*p != '\0' && strpbrk(p, " \t") == ((void*)0)) {
   (void)printf("%s%s", sep, p);
   sep = strdup("|");
  }
 (void)putchar(':');





 while ((p = strsep(&t, ":")) != ((void*)0)) {
  while ((ch = *p) != '\0' && isspace(ch))
   ++p;
  if (ch == '\0')
   continue;
  while ((ch = *p++) != '\0')
   switch(ch) {
   case '\033':
    (void)printf("\\E");
   case ' ':
    (void)printf("\\040");
    break;
   case '!':
    (void)printf("\\041");
    break;
   case ',':
    (void)printf("\\054");
    break;
   case '"':
    (void)printf("\\042");
    break;
   case '\'':
    (void)printf("\\047");
    break;
   case '`':
    (void)printf("\\140");
    break;
   case '\\':
   case '^':
    (void)putchar(ch);
    if ((ch = *p++) == '\0')
     break;

   default:
    (void)putchar(ch);
  }
  (void)putchar(':');
 }
}
