
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int err (int,char*,size_t) ;
 int isalnum (unsigned char const) ;
 scalar_t__ isspace (unsigned char const) ;
 char* malloc (size_t) ;
 int memcpy (char*,unsigned char const*,size_t) ;

__attribute__((used)) static int
comp(const char *origline, char **compline, size_t *len)
{
 const unsigned char *p;
 unsigned char *q;
 char *cline;
 size_t l = *len, complen;
 int hasalnum, iscomment;


 for (p = (const unsigned char *)origline; l && *p && isspace(*p);
     p++, l--)
  continue;
 if ((cline = malloc(l + 1)) == ((void*)0))
  err(1, "Cannot allocate %zu bytes", l + 1);
 (void)memcpy(cline, p, l);
 cline[l] = '\0';
 if (*cline == '\0')
  return 0;

 complen = 0;
 hasalnum = 0;
 iscomment = 0;

 for (q = (unsigned char *)cline; l && *p; p++, l--) {
  if (isspace(*p)) {
   if (complen && isspace(q[-1]))
    continue;
   *q++ = ' ';
   complen++;
  } else {
   if (!iscomment && *p == '#') {
    if (hasalnum)
     break;
    iscomment = 1;
   } else
    hasalnum |= isalnum(*p);
   *q++ = *p;
   complen++;
  }
 }


 while (complen && isspace(q[-1])) {
  --q;
  --complen;
 }
 *q = '\0';
 *compline = cline;
 *len = complen;
 return hasalnum;
}
