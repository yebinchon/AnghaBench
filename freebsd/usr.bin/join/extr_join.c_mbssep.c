
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ wchar_t ;


 int EILSEQ ;
 int MB_LEN_MAX ;
 int errc (int,int ,int *) ;
 size_t mbrtowc (scalar_t__*,char*,int ,int *) ;

__attribute__((used)) static char *
mbssep(char **stringp, const wchar_t *delim)
{
 char *s, *tok;
 const wchar_t *spanp;
 wchar_t c, sc;
 size_t n;

 if ((s = *stringp) == ((void*)0))
  return (((void*)0));
 for (tok = s;;) {
  n = mbrtowc(&c, s, MB_LEN_MAX, ((void*)0));
  if (n == (size_t)-1 || n == (size_t)-2)
   errc(1, EILSEQ, ((void*)0));
  s += n;
  spanp = delim;
  do {
   if ((sc = *spanp++) == c) {
    if (c == 0)
     s = ((void*)0);
    else
     s[-n] = '\0';
    *stringp = s;
    return (tok);
   }
  } while (sc != 0);
 }
}
