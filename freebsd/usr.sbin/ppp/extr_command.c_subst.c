
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int bcopy (char const*,char*,int) ;
 char* realloc (char*,int) ;
 int strlen (char const*) ;
 char* strstrword (char*,char const*) ;

__attribute__((used)) static char *
subst(char *tgt, const char *oldstr, const char *newstr)
{

  char *word, *ntgt;
  int ltgt, loldstr, lnewstr, pos;

  if ((word = strstrword(tgt, oldstr)) == ((void*)0))
    return tgt;

  ltgt = strlen(tgt) + 1;
  loldstr = strlen(oldstr);
  lnewstr = strlen(newstr);
  do {
    pos = word - tgt;
    if (loldstr > lnewstr)
      bcopy(word + loldstr, word + lnewstr, ltgt - pos - loldstr);
    if (loldstr != lnewstr) {
      ntgt = realloc(tgt, ltgt += lnewstr - loldstr);
      if (ntgt == ((void*)0))
        break;
      word = ntgt + pos;
      tgt = ntgt;
    }
    if (lnewstr > loldstr)
      bcopy(word + loldstr, word + lnewstr, ltgt - pos - lnewstr);
    bcopy(newstr, word, lnewstr);
  } while ((word = strstrword(word, oldstr)));

  return tgt;
}
