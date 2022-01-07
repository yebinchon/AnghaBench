
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CLCNT ;
 int D_MD_ORDER ;
 int HEADLEN ;
 int INCHAR ;
 void* INGAP ;
 int LC_TIME ;
 int LINES ;
 int NMCHAR ;
 int NMWD ;
 int OCHAR ;
 void* OGAP ;
 int PGWD ;
 int SCHAR ;
 int SPGWD ;
 int TAILLEN ;
 int TIMEFMTD ;
 int TIMEFMTM ;
 scalar_t__ across ;
 int addone ;
 void* atoi (char*) ;
 int clcnt ;
 int colwd ;
 scalar_t__ dspace ;
 int egetopt (int,char**,char*) ;
 char* eoptarg ;
 int eoptind ;
 int * err ;
 int fileno (int ) ;
 int formfeed ;
 int fprintf (int *,char*,...) ;
 int fputs (char*,int *) ;
 char* header ;
 int inchar ;
 void* ingap ;
 scalar_t__ isatty (int ) ;
 int isdigit (unsigned char) ;
 int lines ;
 scalar_t__ merge ;
 char* nl_langinfo (int ) ;
 int nmchar ;
 int nmwd ;
 int nodiag ;
 int nohead ;
 int ochar ;
 int offst ;
 void* ogap ;
 int pauseall ;
 int pausefst ;
 int pgnm ;
 int pgwd ;
 int schar ;
 int setlocale (int ,char*) ;
 scalar_t__ sflag ;
 int * stderr ;
 int stdout ;
 int strdup (int ) ;
 int timefrmt ;
 int * tmpfile () ;

int
setup(int argc, char *argv[])
{
 int c;
 int d_first;
 int eflag = 0;
 int iflag = 0;
 int wflag = 0;
 int cflag = 0;
 char *Lflag = ((void*)0);

 if (isatty(fileno(stdout))) {



  if ((err = tmpfile()) == ((void*)0)) {
         err = stderr;
         (void)fputs("Cannot defer diagnostic messages\n",stderr);
         return(1);
  }
 } else
  err = stderr;
 while ((c = egetopt(argc, argv, "#adFfmrte?h:i?L:l:n?o:ps?w:")) != -1) {
  switch (c) {
  case '+':
   if ((pgnm = atoi(eoptarg)) < 1) {
       (void)fputs("pr: +page number must be 1 or more\n",
    err);
       return(1);
   }
   break;
  case '-':
   if ((clcnt = atoi(eoptarg)) < 1) {
       (void)fputs("pr: -columns must be 1 or more\n",err);
       return(1);
   }
   if (clcnt > 1)
    ++cflag;
   break;
  case 'a':
   ++across;
   break;
  case 'd':
   ++dspace;
   break;
  case 'e':
   ++eflag;
   if ((eoptarg != ((void*)0)) && !isdigit((unsigned char)*eoptarg))
    inchar = *eoptarg++;
   else
    inchar = INCHAR;
   if ((eoptarg != ((void*)0)) && isdigit((unsigned char)*eoptarg)) {
    if ((ingap = atoi(eoptarg)) < 0) {
     (void)fputs(
     "pr: -e gap must be 0 or more\n", err);
     return(1);
    }
    if (ingap == 0)
     ingap = INGAP;
   } else if ((eoptarg != ((void*)0)) && (*eoptarg != '\0')) {
    (void)fprintf(err,
          "pr: invalid value for -e %s\n", eoptarg);
    return(1);
   } else
    ingap = INGAP;
   break;
  case 'f':
   ++pausefst;

  case 'F':
   ++formfeed;
   break;
  case 'h':
   header = eoptarg;
   break;
  case 'i':
   ++iflag;
   if ((eoptarg != ((void*)0)) && !isdigit((unsigned char)*eoptarg))
    ochar = *eoptarg++;
   else
    ochar = OCHAR;
   if ((eoptarg != ((void*)0)) && isdigit((unsigned char)*eoptarg)) {
    if ((ogap = atoi(eoptarg)) < 0) {
     (void)fputs(
     "pr: -i gap must be 0 or more\n", err);
     return(1);
    }
    if (ogap == 0)
     ogap = OGAP;
   } else if ((eoptarg != ((void*)0)) && (*eoptarg != '\0')) {
    (void)fprintf(err,
          "pr: invalid value for -i %s\n", eoptarg);
    return(1);
   } else
    ogap = OGAP;
   break;
  case 'L':
   Lflag = eoptarg;
   break;
  case 'l':
   if (!isdigit((unsigned char)*eoptarg) || ((lines=atoi(eoptarg)) < 1)) {
    (void)fputs(
     "pr: number of lines must be 1 or more\n",err);
    return(1);
   }
   break;
  case 'm':
   ++merge;
   break;
  case 'n':
   if ((eoptarg != ((void*)0)) && !isdigit((unsigned char)*eoptarg))
    nmchar = *eoptarg++;
   else
    nmchar = NMCHAR;
   if ((eoptarg != ((void*)0)) && isdigit((unsigned char)*eoptarg)) {
    if ((nmwd = atoi(eoptarg)) < 1) {
     (void)fputs(
     "pr: -n width must be 1 or more\n",err);
     return(1);
    }
   } else if ((eoptarg != ((void*)0)) && (*eoptarg != '\0')) {
    (void)fprintf(err,
          "pr: invalid value for -n %s\n", eoptarg);
    return(1);
   } else
    nmwd = NMWD;
   break;
  case 'o':
   if (!isdigit((unsigned char)*eoptarg) || ((offst = atoi(eoptarg))< 1)){
    (void)fputs("pr: -o offset must be 1 or more\n",
     err);
    return(1);
   }
   break;
  case 'p':
   ++pauseall;
   break;
  case 'r':
   ++nodiag;
   break;
  case 's':
   ++sflag;
   if (eoptarg == ((void*)0))
    schar = SCHAR;
   else {
    schar = *eoptarg++;
    if (*eoptarg != '\0') {
     (void)fprintf(err,
         "pr: invalid value for -s %s\n",
         eoptarg);
     return(1);
    }
   }
   break;
  case 't':
   ++nohead;
   break;
  case 'w':
   ++wflag;
   if ((eoptarg == ((void*)0) ) ||
       !isdigit((unsigned char)*eoptarg) ||
       ((pgwd = atoi(eoptarg)) < 1)){
    (void)fputs(
       "pr: -w width must be 1 or more \n",err);
    return(1);
   }
   break;
  case '?':
  default:
   return(1);
  }
 }




 if (!clcnt) {
  if (merge) {
   if ((clcnt = argc - eoptind) <= 1) {
    clcnt = CLCNT;
    merge = 0;
   }
  } else
   clcnt = CLCNT;
 }
 if (across) {
  if (clcnt == 1) {
   (void)fputs("pr: -a flag requires multiple columns\n",
    err);
   return(1);
  }
  if (merge) {
   (void)fputs("pr: -m cannot be used with -a\n", err);
   return(1);
  }
 }
 if (!wflag) {
  if (sflag)
   pgwd = SPGWD;
  else
   pgwd = PGWD;
 }
 if (cflag || merge) {
  if (!eflag) {
   inchar = INCHAR;
   ingap = INGAP;
  }
  if (!iflag) {
   ochar = OCHAR;
   ogap = OGAP;
  }
 }
 if (cflag) {
  if (merge) {
   (void)fputs(
     "pr: -m cannot be used with multiple columns\n", err);
   return(1);
  }
  if (nmwd) {
   colwd = (pgwd + 1 - (clcnt * (nmwd + 2)))/clcnt;
   pgwd = ((colwd + nmwd + 2) * clcnt) - 1;
  } else {
   colwd = (pgwd + 1 - clcnt)/clcnt;
   pgwd = ((colwd + 1) * clcnt) - 1;
  }
  if (colwd < 1) {
   (void)fprintf(err,
     "pr: page width is too small for %d columns\n",clcnt);
   return(1);
  }
 }
 if (!lines)
  lines = LINES;




 if (lines <= HEADLEN + TAILLEN)
  ++nohead;
 else if (!nohead)
  lines -= HEADLEN + TAILLEN;




 if (dspace) {
  if (lines == 1)
   dspace = 0;
  else {
   if (lines & 1)
    ++addone;
   lines /= 2;
  }
 }

 (void) setlocale(LC_TIME, (Lflag != ((void*)0)) ? Lflag : "");

 d_first = (*nl_langinfo(D_MD_ORDER) == 'd');
 timefrmt = strdup(d_first ? TIMEFMTD : TIMEFMTM);

 return(0);
}
