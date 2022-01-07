
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char EOS ;
 int FNM_CASEFOLD ;
 int FNM_NOESCAPE ;
 int FNM_PATHNAME ;
 int RANGE_ERROR ;
 int RANGE_MATCH ;
 int RANGE_NOMATCH ;
 char tolower (unsigned char) ;

__attribute__((used)) static int
rangematch(const char *pattern, char test, int flags, char **newp)
{
 int negate, ok;
 char c, c2;
 if ( (negate = (*pattern == '!' || *pattern == '^')) )
  ++pattern;

 if (flags & FNM_CASEFOLD)
  test = tolower((unsigned char)test);






 ok = 0;
 c = *pattern++;
 do {
  if (c == '\\' && !(flags & FNM_NOESCAPE))
   c = *pattern++;
  if (c == EOS)
   return (RANGE_ERROR);

  if (c == '/' && (flags & FNM_PATHNAME))
   return (RANGE_NOMATCH);

  if (flags & FNM_CASEFOLD)
   c = tolower((unsigned char)c);

  if (*pattern == '-'
      && (c2 = *(pattern+1)) != EOS && c2 != ']') {
   pattern += 2;
   if (c2 == '\\' && !(flags & FNM_NOESCAPE))
    c2 = *pattern++;
   if (c2 == EOS)
    return (RANGE_ERROR);

   if (flags & FNM_CASEFOLD)
    c2 = tolower((unsigned char)c2);

   if (c <= test && test <= c2)
    ok = 1;
  } else if (c == test)
   ok = 1;
 } while ((c = *pattern++) != ']');

 *newp = (char *)(uintptr_t)pattern;
 return (ok == negate ? RANGE_NOMATCH : RANGE_MATCH);
}
