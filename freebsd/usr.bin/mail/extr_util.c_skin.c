
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int err (int,char*) ;
 char* malloc (scalar_t__) ;
 char* realloc (char*,scalar_t__) ;
 char* skip_comment (char*) ;
 int * strchr (char*,char) ;
 scalar_t__ strlen (char*) ;

char *
skin(char *name)
{
 char *nbuf, *bufend, *cp, *cp2;
 int c, gotlt, lastsp;

 if (name == ((void*)0))
  return (((void*)0));
 if (strchr(name, '(') == ((void*)0) && strchr(name, '<') == ((void*)0)
     && strchr(name, ' ') == ((void*)0))
  return (name);


 if ((nbuf = malloc(strlen(name) + 1)) == ((void*)0))
  err(1, "Out of memory");
 gotlt = 0;
 lastsp = 0;
 bufend = nbuf;
 for (cp = name, cp2 = bufend; (c = *cp++) != '\0'; ) {
  switch (c) {
  case '(':
   cp = skip_comment(cp);
   lastsp = 0;
   break;

  case '"':




   while ((c = *cp) != '\0') {
    cp++;
    if (c == '"')
     break;
    if (c != '\\')
     *cp2++ = c;
    else if ((c = *cp) != '\0') {
     *cp2++ = c;
     cp++;
    }
   }
   lastsp = 0;
   break;

  case ' ':
   if (cp[0] == 'a' && cp[1] == 't' && cp[2] == ' ')
    cp += 3, *cp2++ = '@';
   else
   if (cp[0] == '@' && cp[1] == ' ')
    cp += 2, *cp2++ = '@';
   else
    lastsp = 1;
   break;

  case '<':
   cp2 = bufend;
   gotlt++;
   lastsp = 0;
   break;

  case '>':
   if (gotlt) {
    gotlt = 0;
    while ((c = *cp) != '\0' && c != ',') {
     cp++;
     if (c == '(')
      cp = skip_comment(cp);
     else if (c == '"')
      while ((c = *cp) != '\0') {
       cp++;
       if (c == '"')
        break;
       if (c == '\\' && *cp != '\0')
        cp++;
      }
    }
    lastsp = 0;
    break;
   }


  default:
   if (lastsp) {
    lastsp = 0;
    *cp2++ = ' ';
   }
   *cp2++ = c;
   if (c == ',' && !gotlt &&
       (*cp == ' ' || *cp == '"' || *cp == '<')) {
    *cp2++ = ' ';
    while (*cp == ' ')
     cp++;
    lastsp = 0;
    bufend = cp2;
   }
  }
 }
 *cp2 = '\0';

 if ((cp = realloc(nbuf, strlen(nbuf) + 1)) != ((void*)0))
  nbuf = cp;
 return (nbuf);
}
