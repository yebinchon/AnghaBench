
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct pat {size_t len; char const* pat; } ;
struct TYPE_3__ {size_t rm_so; size_t rm_eo; } ;
typedef TYPE_1__ regmatch_t ;


 int REG_ESPACE ;
 int REG_ICASE ;
 int REG_NOMATCH ;
 int cflags ;
 int free (char*) ;
 char* strcasestr (char const*,char const*) ;
 unsigned long strlen (char const*) ;
 char* strndup (char const*,size_t) ;
 char* strstr (char const*,char const*) ;

__attribute__((used)) static int
litexec(const struct pat *pat, const char *string, size_t nmatch,
    regmatch_t pmatch[])
{
 char *(*strstr_fn)(const char *, const char *);
 char *sub, *subject;
 const char *search;
 size_t idx, n, ofs, stringlen;

 if (cflags & REG_ICASE)
  strstr_fn = strcasestr;
 else
  strstr_fn = strstr;
 idx = 0;
 ofs = pmatch[0].rm_so;
 stringlen = pmatch[0].rm_eo;
 if (ofs >= stringlen)
  return (REG_NOMATCH);
 subject = strndup(string, stringlen);
 if (subject == ((void*)0))
  return (REG_ESPACE);
 for (n = 0; ofs < stringlen;) {
  search = (subject + ofs);
  if ((unsigned long)pat->len > strlen(search))
   break;
  sub = strstr_fn(search, pat->pat);




  if (sub == ((void*)0))
   break;
  ++n;

  if (nmatch > 0) {
   pmatch[idx].rm_so = ofs + (sub - search);
   pmatch[idx].rm_eo = pmatch[idx].rm_so + pat->len;
   if (++idx == nmatch)
    break;
   ofs = pmatch[idx].rm_so + 1;
  } else

   break;
 }
 free(subject);
 if (n > 0 && nmatch > 0)
  for (n = idx; n < nmatch; ++n)
   pmatch[n].rm_so = pmatch[n].rm_eo = -1;

 return (n > 0 ? 0 : REG_NOMATCH);
}
