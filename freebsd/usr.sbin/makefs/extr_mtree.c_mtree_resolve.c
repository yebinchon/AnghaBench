
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sbuf {int dummy; } ;


 void* EINVAL ;
 void* ENOMEM ;
 char* ecalloc (int,int) ;
 void* errno ;
 char* estrdup (char const*) ;
 int free (char*) ;
 char* getcwd (int *,int ) ;
 char* getenv (char*) ;
 char const* getprogname () ;
 int memcpy (char*,char const*,int) ;
 int sbuf_bcat (struct sbuf*,char const*,int) ;
 int sbuf_cat (struct sbuf*,char*) ;
 int sbuf_data (struct sbuf*) ;
 int sbuf_delete (struct sbuf*) ;
 int sbuf_finish (struct sbuf*) ;
 struct sbuf* sbuf_new_auto () ;
 int sbuf_putc (struct sbuf*,char const) ;
 char* strchr (char const*,char) ;
 scalar_t__ strcmp (char*,char*) ;
 char* strdup (int ) ;
 size_t strlen (char const*) ;

__attribute__((used)) static char *
mtree_resolve(const char *spec, int *istemp)
{
 struct sbuf *sb;
 char *res, *var = ((void*)0);
 const char *base, *p, *v;
 size_t len;
 int c, error, quoted, subst;

 len = strlen(spec);
 if (len == 0) {
  errno = EINVAL;
  return (((void*)0));
 }

 c = (len > 1) ? (spec[0] == spec[len - 1]) ? spec[0] : 0 : 0;
 *istemp = (c == '`') ? 1 : 0;
 subst = (c == '`' || c == '"') ? 1 : 0;
 quoted = (subst || c == '\'') ? 1 : 0;

 if (!subst) {
  res = estrdup(spec + quoted);
  if (quoted)
   res[len - 2] = '\0';
  return (res);
 }

 sb = sbuf_new_auto();
 if (sb == ((void*)0)) {
  errno = ENOMEM;
  return (((void*)0));
 }

 base = spec + 1;
 len -= 2;
 error = 0;
 while (len > 0) {
  p = strchr(base, '$');
  if (p == ((void*)0)) {
   sbuf_bcat(sb, base, len);
   base += len;
   len = 0;
   continue;
  }

  if (p[-1] == '\\')
   p--;
  if (base != p) {
   sbuf_bcat(sb, base, p - base);
   len -= p - base;
   base = p;
  }
  if (*p == '\\') {
   sbuf_putc(sb, '$');
   base += 2;
   len -= 2;
   continue;
  }

  base++;
  len--;

  v = base;
  if (*base == '{') {
   p = strchr(v, '}');
   if (p == ((void*)0))
    p = v;
  } else
   p = v;
  len -= (p + 1) - base;
  base = p + 1;

  if (v == p) {
   sbuf_putc(sb, *v);
   continue;
  }

  error = ENOMEM;
  var = ecalloc(p - v, 1);
  memcpy(var, v + 1, p - v - 1);
  if (strcmp(var, ".CURDIR") == 0) {
   res = getcwd(((void*)0), 0);
   if (res == ((void*)0))
    break;
  } else if (strcmp(var, ".PROG") == 0) {
   res = estrdup(getprogname());
  } else {
   v = getenv(var);
   if (v != ((void*)0)) {
    res = estrdup(v);
   } else
    res = ((void*)0);
  }
  error = 0;

  if (res != ((void*)0)) {
   sbuf_cat(sb, res);
   free(res);
  }
  free(var);
  var = ((void*)0);
 }

 free(var);
 sbuf_finish(sb);
 res = (error == 0) ? strdup(sbuf_data(sb)) : ((void*)0);
 sbuf_delete(sb);
 if (res == ((void*)0))
  errno = ENOMEM;
 return (res);
}
