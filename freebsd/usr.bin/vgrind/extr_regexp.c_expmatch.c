
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char ALT ;

 char* MNEXT (char*) ;
 int MSYM (char*) ;
 char* ONEXT (char*) ;

 char OPT ;
 char* OPTR (char*) ;
 int OSYM (char*) ;
 int SCNT (char*) ;
 char* SNEXT (char*) ;
 int SSTR (char*) ;

 int STRNCMP (char*,int ,int ) ;
 int _escaped ;
 int isalnum (char) ;
 char* s_start ;
 int strlen (char*) ;
 int strncpy (char*,char*,int) ;

char *
expmatch (register char *s, register char *re, register char *mstring)
{
    register char *cs;
    register char *ptr,*s1;
    bool matched;


    if (re == ((void*)0))
 return (((void*)0));
    cs = re;
    matched = 0;


    while (*cs) {
 switch (*cs & (129 | 128 | 130)) {


 case 128:
     matched = !STRNCMP (s, SSTR(cs), SCNT(cs));
     if (matched) {


  s += SCNT(cs);
  cs = SNEXT(cs);
     } else if (*cs & ALT) {


  cs = SNEXT(cs);
     } else if (*cs & OPT) {


  cs = SNEXT(cs);
  matched = 1;
     } else {


  return (((void*)0));
     }
     break;


 case 129:
     switch (OSYM(cs)) {


     case '|':
  if (matched)


      cs = OPTR(cs);
  else


      cs = ONEXT(cs);
  break;


     case '(':
  ptr = expmatch(s, ONEXT(cs), mstring);
  if (ptr != ((void*)0)) {


      matched = 1;
      s = ptr;
  } else if (*cs & ALT) {


      matched = 0;
  } else if (*cs & OPT) {


      matched = 1;
  } else {


      return (((void*)0));
  }
  cs = OPTR(cs);
  break;
     }
     break;


 case 130:
     switch (MSYM(cs)) {


     case 'p':





  s1 = s;
  do {
      ptr = expmatch(s1, MNEXT(cs), mstring);
      if (ptr != ((void*)0) && s1 != s) {


   strncpy (mstring, s, s1 - s);
   mstring[s1 - s] = '\0';
   return (ptr);
      } else if (ptr != ((void*)0) && (*cs & OPT)) {


   return (ptr);
      } else if (ptr != ((void*)0)) {


   return (((void*)0));
      }
      if (!(isalnum(*s1) || *s1 == '_' ||

     *s1 == '~' ||

     (strlen(s1) > 1 && *s1 == ':' && s1[1] == ':' &&
      (s1++, 1))))
   return (((void*)0));
      if (*s1 == '\\')
   _escaped = _escaped ? 0 : 1;
      else
   _escaped = 0;
  } while (*s1++);
  return (((void*)0));


     case 'a':





  s1 = s;
  do {
      ptr = expmatch(s1, MNEXT(cs), mstring);
      if (ptr != ((void*)0) && s1 != s) {


   return (ptr);
      } else if (ptr != ((void*)0) && (*cs & OPT)) {


   return (ptr);
      } else if (ptr != ((void*)0)) {


   return (((void*)0));
      }
      if (*s1 == '\\')
   _escaped = _escaped ? 0 : 1;
      else
   _escaped = 0;
  } while (*s1++);
  return (((void*)0));


     case 'e':
  if (_escaped)
      return(((void*)0));
  cs = MNEXT(cs);
  break;


     case 'd':
  ptr = s;
  while (*s == ' ' || *s == '\t')
      s++;
  if (s != ptr || s == s_start) {


      matched = 1;
      cs = MNEXT(cs);
  } else if (*s == '\n' || *s == '\0') {


      matched = 1;
      cs = MNEXT(cs);
  } else if (*cs & ALT) {


      matched = 0;
      cs = MNEXT(cs);
  } else if (*cs & OPT) {


      matched = 1;
      cs = MNEXT(cs);
  } else


      return (((void*)0));
  break;


     case '$':
  if (*s == '\0' || *s == '\n') {


      s++;
      matched = 1;
      cs = MNEXT(cs);
  } else if (*cs & ALT) {


      matched = 0;
      cs = MNEXT(cs);
  } else if (*cs & OPT) {


      matched = 1;
      cs = MNEXT(cs);
  } else


      return (((void*)0));
  break;


     case '^':
  if (s == s_start) {


      matched = 1;
      cs = MNEXT(cs);
  } else if (*cs & ALT) {


      matched = 0;
      cs = MNEXT(cs);
  } else if (*cs & OPT) {


      matched = 1;
      cs = MNEXT(cs);
  } else


      return (((void*)0));
  break;


     case ')':
  return (s);
     }
     break;
 }
    }
    return (s);
}
