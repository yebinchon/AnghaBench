
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct stat {int st_mode; } ;
typedef scalar_t__ regoff_t ;
struct TYPE_3__ {scalar_t__ rm_eo; scalar_t__ rm_so; } ;
typedef TYPE_1__ regmatch_t ;
typedef int regex_t ;
typedef char* ccharp ;
typedef int FILE ;


 int BUFSIZ ;
 int EX_DATAERR ;
 int EX_UNAVAILABLE ;
 int LC_ALL ;
 char* LOCATECMD ;
 char* MANWHEREISALLCMD ;
 char* MANWHEREISCMD ;
 char* MANWHEREISMATCH ;
 int NO_BIN_FOUND ;
 int NO_MAN_FOUND ;
 int NO_SRC_FOUND ;
 int REG_EXTENDED ;
 int REG_NOSUB ;
 int S_IFDIR ;
 int S_IFMT ;
 int S_IFREG ;
 int S_IXGRP ;
 int S_IXOTH ;
 int S_IXUSR ;
 int abort () ;
 char** bindirs ;
 int colonify (int *) ;
 int defaults () ;
 int errx (int ,char*,...) ;
 int * fgets (char*,int,int *) ;
 int fputs (char*,int ) ;
 int free (char*) ;
 char* malloc (int) ;
 int * mandirs ;
 int memcpy (char*,char*,scalar_t__) ;
 scalar_t__ opt_a ;
 scalar_t__ opt_b ;
 scalar_t__ opt_m ;
 int opt_q ;
 scalar_t__ opt_s ;
 scalar_t__ opt_u ;
 scalar_t__ opt_x ;
 int pclose (int *) ;
 int * popen (char*,char*) ;
 int printf (char*,char*) ;
 int putchar (char) ;
 char** query ;
 char* realloc (char*,size_t) ;
 int regcomp (int *,char*,int) ;
 int regerror (int,int *,char*,int) ;
 scalar_t__ regexec (int *,char*,int,TYPE_1__*,int ) ;
 int regfree (int *) ;
 int scanopts (int,char**) ;
 int setenv (char*,int ,int) ;
 int setlocale (int ,char*) ;
 char** sourcedirs ;
 int sprintf (char*,char*,char*) ;
 scalar_t__ stat (char*,struct stat*) ;
 int stdout ;
 int strcat (char*,char*) ;
 char* strchr (char*,char) ;
 scalar_t__ strcmp (char*,char*) ;
 int strcpy (char*,char*) ;
 char* strdup (char*) ;
 int strlen (char*) ;
 scalar_t__ strncmp (char*,char*,int) ;
 char* strrchr (char*,char) ;

int
main(int argc, char **argv)
{
 int unusual, i, printed;
 char *bin, buf[BUFSIZ], *cp, *cp2, *man, *name, *src;
 ccharp *dp;
 size_t nlen, olen, s;
 struct stat sb;
 regex_t re, re2;
 regmatch_t matches[2];
 regoff_t rlen;
 FILE *p;

 setlocale(LC_ALL, "");

 scanopts(argc, argv);
 defaults();

 if (mandirs == ((void*)0))
  opt_m = 0;
 if (bindirs == ((void*)0))
  opt_b = 0;
 if (sourcedirs == ((void*)0))
  opt_s = 0;
 if (opt_m + opt_b + opt_s == 0)
  errx(EX_DATAERR, "no directories to search");

 if (opt_m) {
  setenv("MANPATH", colonify(mandirs), 1);
  if ((i = regcomp(&re, MANWHEREISMATCH, REG_EXTENDED)) != 0) {
   regerror(i, &re, buf, BUFSIZ - 1);
   errx(EX_UNAVAILABLE, "regcomp(%s) failed: %s",
        MANWHEREISMATCH, buf);
  }
 }

 for (; (name = *query) != ((void*)0); query++) {

  if ((cp = strrchr(name, '/')) != ((void*)0))
   name = cp + 1;

  if (strlen(name) > 2 && strncmp(name, "s.", 2) == 0)
   name += 2;
  if ((s = strlen(name)) > 2 && strcmp(name + s - 2, ",v") == 0)
   name[s - 2] = '\0';

  s = strlen(name);
  if (s > 2 &&
      (strcmp(name + s - 2, ".z") == 0 ||
       strcmp(name + s - 2, ".Z") == 0))
   name[s - 2] = '\0';
  else if (s > 3 &&
    strcmp(name + s - 3, ".gz") == 0)
   name[s - 3] = '\0';
  else if (s > 4 &&
    strcmp(name + s - 4, ".bz2") == 0)
   name[s - 4] = '\0';

  unusual = 0;
  bin = man = src = ((void*)0);
  s = strlen(name);

  if (opt_b) {




   unusual = unusual | NO_BIN_FOUND;
   for (dp = bindirs; *dp != ((void*)0); dp++) {
    cp = malloc(strlen(*dp) + 1 + s + 1);
    if (cp == ((void*)0))
     abort();
    strcpy(cp, *dp);
    strcat(cp, "/");
    strcat(cp, name);
    if (stat(cp, &sb) == 0 &&
        (sb.st_mode & S_IFMT) == S_IFREG &&
        (sb.st_mode & (S_IXUSR | S_IXGRP | S_IXOTH))
        != 0) {
     unusual = unusual & ~NO_BIN_FOUND;
     if (bin == ((void*)0)) {
      bin = strdup(cp);
     } else {
      olen = strlen(bin);
      nlen = strlen(cp);
      bin = realloc(bin,
             olen + nlen + 2);
      if (bin == ((void*)0))
       abort();
      strcat(bin, " ");
      strcat(bin, cp);
     }
     if (!opt_a) {
      free(cp);
      break;
     }
    }
    free(cp);
   }
  }

  if (opt_m) {



   unusual = unusual | NO_MAN_FOUND;
   if (opt_a)
    cp = malloc(sizeof MANWHEREISALLCMD - 2 + s);
   else
    cp = malloc(sizeof MANWHEREISCMD - 2 + s);

   if (cp == ((void*)0))
    abort();

   if (opt_a)
    sprintf(cp, MANWHEREISALLCMD, name);
   else
    sprintf(cp, MANWHEREISCMD, name);

   if ((p = popen(cp, "r")) != ((void*)0)) {

    while (fgets(buf, BUFSIZ - 1, p) != ((void*)0)) {
     unusual = unusual & ~NO_MAN_FOUND;

     if ((cp2 = strchr(buf, '\n')) != ((void*)0))
      *cp2 = '\0';
     if (regexec(&re, buf, 2,
          matches, 0) == 0 &&
         (rlen = matches[1].rm_eo -
          matches[1].rm_so) > 0) {





      cp2 = malloc(rlen + 1);
      if (cp2 == ((void*)0))
       abort();
      memcpy(cp2,
             buf + matches[1].rm_so,
             rlen);
      cp2[rlen] = '\0';
     } else {




      cp2 = strdup(buf);
      if (cp2 == ((void*)0))
       abort();
     }

     if (man == ((void*)0)) {
      man = strdup(cp2);
     } else {
      olen = strlen(man);
      nlen = strlen(cp2);
      man = realloc(man,
             olen + nlen + 2);
      if (man == ((void*)0))
       abort();
      strcat(man, " ");
      strcat(man, cp2);
     }

     free(cp2);

     if (!opt_a)
      break;
    }
    pclose(p);
    free(cp);
   }
  }

  if (opt_s) {




   unusual = unusual | NO_SRC_FOUND;
   for (dp = sourcedirs; *dp != ((void*)0); dp++) {
    cp = malloc(strlen(*dp) + 1 + s + 1);
    if (cp == ((void*)0))
     abort();
    strcpy(cp, *dp);
    strcat(cp, "/");
    strcat(cp, name);
    if (stat(cp, &sb) == 0 &&
        (sb.st_mode & S_IFMT) == S_IFDIR) {
     unusual = unusual & ~NO_SRC_FOUND;
     if (src == ((void*)0)) {
      src = strdup(cp);
     } else {
      olen = strlen(src);
      nlen = strlen(cp);
      src = realloc(src,
             olen + nlen + 2);
      if (src == ((void*)0))
       abort();
      strcat(src, " ");
      strcat(src, cp);
     }
     if (!opt_a) {
      free(cp);
      break;
     }
    }
    free(cp);
   }
   if (opt_x || (src && !opt_a))
    goto done_sources;

   cp = malloc(sizeof LOCATECMD - 2 + s);
   if (cp == ((void*)0))
    abort();
   sprintf(cp, LOCATECMD, name);
   if ((p = popen(cp, "r")) == ((void*)0))
    goto done_sources;
   while ((src == ((void*)0) || opt_a) &&
          (fgets(buf, BUFSIZ - 1, p)) != ((void*)0)) {
    if ((cp2 = strchr(buf, '\n')) != ((void*)0))
     *cp2 = '\0';
    for (dp = sourcedirs;
         (src == ((void*)0) || opt_a) && *dp != ((void*)0);
         dp++) {
     cp2 = malloc(strlen(*dp) + 9);
     if (cp2 == ((void*)0))
      abort();
     strcpy(cp2, "^");
     strcat(cp2, *dp);
     strcat(cp2, "/[^/]+/");
     if ((i = regcomp(&re2, cp2,
        REG_EXTENDED|REG_NOSUB))
         != 0) {
      regerror(i, &re, buf,
        BUFSIZ - 1);
      errx(EX_UNAVAILABLE,
           "regcomp(%s) failed: %s",
           cp2, buf);
     }
     free(cp2);
     if (regexec(&re2, buf, 0,
          (regmatch_t *)((void*)0), 0)
         == 0) {
      unusual = unusual &
                ~NO_SRC_FOUND;
      if (src == ((void*)0)) {
       src = strdup(buf);
      } else {
       olen = strlen(src);
       nlen = strlen(buf);
       src = realloc(src,
              olen +
              nlen + 2);
       if (src == ((void*)0))
        abort();
       strcat(src, " ");
       strcat(src, buf);
      }
     }
     regfree(&re2);
    }
   }
   pclose(p);
   free(cp);
  }
   done_sources:

  if (opt_u && !unusual)
   continue;

  printed = 0;
  if (!opt_q) {
   printf("%s:", name);
   printed++;
  }
  if (bin) {
   if (printed++)
    putchar(' ');
   fputs(bin, stdout);
  }
  if (man) {
   if (printed++)
    putchar(' ');
   fputs(man, stdout);
  }
  if (src) {
   if (printed++)
    putchar(' ');
   fputs(src, stdout);
  }
  if (printed)
   putchar('\n');
 }

 if (opt_m)
  regfree(&re);

 return (0);
}
