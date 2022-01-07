
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ ALTERNATE ;
 int BUFSIZ ;
 size_t PNAMELEN ;
 size_t PSMAX ;
 scalar_t__ STANDARD ;
 int _escaped ;
 scalar_t__ blklevel ;
 scalar_t__ comtype ;
 char* expmatch (char*,int ,char*) ;
 int inchr ;
 int incomm ;
 int instr ;
 scalar_t__ isproc (char*) ;
 int l_acmbeg ;
 int l_acmend ;
 int l_blkbeg ;
 int l_blkend ;
 int l_chrbeg ;
 int l_chrend ;
 int l_combeg ;
 int l_comend ;
 int l_nocom ;
 int l_strbeg ;
 int l_strend ;
 scalar_t__ nokeyw ;
 scalar_t__* plstack ;
 char* pname ;
 int prccont ;
 int ps (char*) ;
 size_t psptr ;
 char** pstack ;
 int putKcp (char*,char*,int) ;
 char* s_start ;
 int strlen (char*) ;
 int strncpy (char*,char*,size_t) ;

__attribute__((used)) static void
putScp(char *os)
{
    register char *s = os;
    char dummy[BUFSIZ];
    char *comptr;
    char *acmptr;
    char *strptr;
    char *chrptr;
    char *blksptr;
    char *blkeptr;
    char *nocomptr;

    s_start = os;
    _escaped = 0;
    if (nokeyw || incomm || instr)
 goto skip;
    if (isproc(s)) {
 ps("'FN ");
 ps(pname);
        ps("\n");
 if (psptr < PSMAX) {
     ++psptr;
     strncpy (pstack[psptr], pname, PNAMELEN);
     pstack[psptr][PNAMELEN] = '\0';
     plstack[psptr] = blklevel;
 }
    }
skip:
    do {

 if (!incomm && !instr && !inchr) {

     blkeptr = expmatch(s, l_blkend, dummy);
     blksptr = expmatch(s, l_blkbeg, dummy);
     comptr = expmatch(s, l_combeg, dummy);
     acmptr = expmatch(s, l_acmbeg, dummy);
     strptr = expmatch(s, l_strbeg, dummy);
     chrptr = expmatch(s, l_chrbeg, dummy);
     nocomptr = expmatch (s, l_nocom, dummy);


     if (nocomptr != ((void*)0))
  if ((nocomptr <= comptr || comptr == ((void*)0))
    && (nocomptr <= acmptr || acmptr == ((void*)0))) {

      putKcp (s, nocomptr-1, 0);
      s = nocomptr;
      continue;
  }


     if (comptr != ((void*)0))
  if ((comptr < strptr || strptr == ((void*)0))
    && (comptr < acmptr || acmptr == ((void*)0))
    && (comptr < chrptr || chrptr == ((void*)0))
    && (comptr < blksptr || blksptr == ((void*)0))
    && (comptr < blkeptr || blkeptr == ((void*)0))) {
      putKcp(s, comptr-1, 0);
      s = comptr;
      incomm = 1;
      comtype = STANDARD;
      if (s != os)
   ps("\\c");
      ps("\\c\n'+C\n");
      continue;
  }


     if (acmptr != ((void*)0))
  if ((acmptr < strptr || strptr == ((void*)0))
    && (acmptr < chrptr || chrptr == ((void*)0))
    && (acmptr < blksptr || blksptr == ((void*)0))
    && (acmptr < blkeptr || blkeptr == ((void*)0))) {
      putKcp(s, acmptr-1, 0);
      s = acmptr;
      incomm = 1;
      comtype = ALTERNATE;
      if (s != os)
   ps("\\c");
      ps("\\c\n'+C\n");
      continue;
  }


     if (strptr != ((void*)0))
  if ((strptr < chrptr || chrptr == ((void*)0))
    && (strptr < blksptr || blksptr == ((void*)0))
    && (strptr < blkeptr || blkeptr == ((void*)0))) {
      putKcp(s, strptr-1, 0);
      s = strptr;
      instr = 1;
      continue;
  }


     if (chrptr != ((void*)0))
  if ((chrptr < blksptr || blksptr == ((void*)0))
    && (chrptr < blkeptr || blkeptr == ((void*)0))) {
      putKcp(s, chrptr-1, 0);
      s = chrptr;
      inchr = 1;
      continue;
  }


     if (blkeptr != ((void*)0)) {
  if (blkeptr < blksptr || blksptr == ((void*)0)) {
      putKcp(s, blkeptr - 1, 0);
      s = blkeptr;
      if (blklevel > 0 )
       blklevel--;
      if (psptr >= 0 && plstack[psptr] >= blklevel) {


   if (s != os)
       ps("\\c");
   ps("\\c\n'-F\n");
   blklevel = plstack[psptr];


   if (--psptr >= 0)
       prccont = 1;
   else
       psptr = -1;
      }
      continue;
  }
     }


     if (blksptr != ((void*)0)) {
  putKcp(s, blksptr - 1, 0);
  s = blksptr;
  blklevel++;
  continue;
     }


 } else if (incomm) {
     comptr = expmatch(s, l_comend, dummy);
     acmptr = expmatch(s, l_acmend, dummy);
     if (((comtype == STANDARD) && (comptr != ((void*)0))) ||
         ((comtype == ALTERNATE) && (acmptr != ((void*)0)))) {
  if (comtype == STANDARD) {
      putKcp(s, comptr-1, 1);
      s = comptr;
  } else {
      putKcp(s, acmptr-1, 1);
      s = acmptr;
  }
  incomm = 0;
  ps("\\c\n'-C\n");
  continue;
     } else {
  putKcp(s, s + strlen(s) -1, 1);
  s = s + strlen(s);
  continue;
     }


 } else if (instr) {
     if ((strptr = expmatch(s, l_strend, dummy)) != ((void*)0)) {
  putKcp(s, strptr-1, 1);
  s = strptr;
  instr = 0;
  continue;
     } else {
  putKcp(s, s+strlen(s)-1, 1);
  s = s + strlen(s);
  continue;
     }


 } else if (inchr) {
     if ((chrptr = expmatch(s, l_chrend, dummy)) != ((void*)0)) {
  putKcp(s, chrptr-1, 1);
  s = chrptr;
  inchr = 0;
  continue;
     } else {
  putKcp(s, s+strlen(s)-1, 1);
  s = s + strlen(s);
  continue;
     }
 }


 putKcp(s, s + strlen(s) -1, 0);
 s = s + strlen(s);
    } while (*s);
}
