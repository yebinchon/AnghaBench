
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int err (int,int *) ;
 int errx (int,char*) ;
 int memcpy (char*,char const*,int) ;
 char* reallocf (char*,size_t) ;
 int strlen (char*) ;
 char* strstr (char const*,char*) ;

void
brace_subst(char *orig, char **store, char *path, size_t len)
{
 const char *pastorigend, *p, *q;
 char *dst;
 size_t newlen, plen;

 plen = strlen(path);
 newlen = strlen(orig) + 1;
 pastorigend = orig + newlen;
 for (p = orig; (q = strstr(p, "{}")) != ((void*)0); p = q + 2) {
  if (plen > 2 && newlen + plen - 2 < newlen)
   errx(2, "brace_subst overflow");
  newlen += plen - 2;
 }
 if (newlen > len) {
  *store = reallocf(*store, newlen);
  if (*store == ((void*)0))
   err(2, ((void*)0));
 }
 dst = *store;
 for (p = orig; (q = strstr(p, "{}")) != ((void*)0); p = q + 2) {
  memcpy(dst, p, q - p);
  dst += q - p;
  memcpy(dst, path, plen);
  dst += plen;
 }
 memcpy(dst, p, pastorigend - p);
}
