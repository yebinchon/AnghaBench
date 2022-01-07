
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EOF ;
 int INCR (char**) ;
 int NOARGS ;
 int NULLPAD ;
 int ONEISEPONLY ;
 int ONEPERLINE ;
 int SKIPPRINT ;
 char* blank ;
 scalar_t__ curlen ;
 char* curline ;
 char** elem ;
 int flags ;
 int get_line () ;
 char** getptrs (char**) ;
 int icols ;
 int irows ;
 char isep ;
 scalar_t__ maxlen ;
 int nelem ;
 scalar_t__ owidth ;
 int puts (char*) ;
 int skip ;

__attribute__((used)) static void
getfile(void)
{
 char *p;
 char *endp;
 char **ep;
 int c;
 int multisep = (flags & ONEISEPONLY ? 0 : 1);
 int nullpad = flags & NULLPAD;
 char **padto;

 while (skip--) {
  c = get_line();
  if (flags & SKIPPRINT)
   puts(curline);
  if (c == EOF)
   return;
 }
 get_line();
 if (flags & NOARGS && curlen < owidth)
  flags |= ONEPERLINE;
 if (flags & ONEPERLINE)
  icols = 1;
 else
  for (p = curline, endp = curline + curlen; p < endp; p++) {
   if (*p == isep && multisep)
    continue;
   icols++;
   while (*p && *p != isep)
    p++;
  }
 ep = getptrs(elem);
 do {
  if (flags & ONEPERLINE) {
   *ep = curline;
   INCR(ep);
   if (maxlen < curlen)
    maxlen = curlen;
   irows++;
   continue;
  }
  for (p = curline, endp = curline + curlen; p < endp; p++) {
   if (*p == isep && multisep)
    continue;
   if (*p == isep)
    *ep = blank;
   else
    *ep = p;
   while (p < endp && *p != isep)
    p++;
   *p = '\0';
   if (maxlen < p - *ep)
    maxlen = p - *ep;
   INCR(ep);
  }
  irows++;
  if (nullpad) {
   padto = elem + irows * icols;
   while (ep < padto) {
    *ep = blank;
    INCR(ep);
   }
  }
 } while (get_line() != EOF);
 *ep = 0;
 nelem = ep - elem;
}
