
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ rm_eo; scalar_t__ rm_so; } ;
typedef TYPE_1__ regmatch_t ;
typedef int regex_t ;


 int REG_EXTENDED ;
 scalar_t__ errno ;
 int errx (int,char*,int ) ;
 int getstr (int) ;
 scalar_t__ regcomp (int *,char const*,int ) ;
 scalar_t__ regexec (int *,char const*,size_t,TYPE_1__*,int ) ;
 int regfree (int *) ;
 int sort_free (char*) ;
 char* sort_malloc (size_t) ;
 int strncpy (char*,char const*,size_t) ;
 scalar_t__ strtoul (char*,int *,int) ;

__attribute__((used)) static int
parse_pos_obs(const char *s, int *nf, int *nc, char* sopts)
{
 regex_t re;
 regmatch_t pmatch[4];
 char *c, *f;
 const char *sregexp = "^([0-9]+)(\\.[0-9]+)?([A-Za-z]+)?$";
 int ret;
 size_t len, nmatch;

 ret = -1;
 nmatch = 4;
 c = f = ((void*)0);
 *nc = *nf = 0;

 if (regcomp(&re, sregexp, REG_EXTENDED) != 0)
  return (-1);

 if (regexec(&re, s, nmatch, pmatch, 0) != 0)
  goto end;

 if (pmatch[0].rm_eo <= pmatch[0].rm_so)
  goto end;

 if (pmatch[1].rm_eo <= pmatch[1].rm_so)
  goto end;

 len = pmatch[1].rm_eo - pmatch[1].rm_so;
 f = sort_malloc((len + 1) * sizeof(char));

 strncpy(f, s + pmatch[1].rm_so, len);
 f[len] = '\0';

 errno = 0;
 *nf = (size_t) strtoul(f, ((void*)0), 10);
 if (errno != 0)
  errx(2, "%s", getstr(11));

 if (pmatch[2].rm_eo > pmatch[2].rm_so) {
  len = pmatch[2].rm_eo - pmatch[2].rm_so - 1;
  c = sort_malloc((len + 1) * sizeof(char));

  strncpy(c, s + pmatch[2].rm_so + 1, len);
  c[len] = '\0';

  errno = 0;
  *nc = (size_t) strtoul(c, ((void*)0), 10);
  if (errno != 0)
   errx(2, "%s", getstr(11));
 }

 if (pmatch[3].rm_eo > pmatch[3].rm_so) {

  len = pmatch[3].rm_eo - pmatch[3].rm_so;

  strncpy(sopts, s + pmatch[3].rm_so, len);
  sopts[len] = '\0';
 }

 ret = 0;

end:
 if (c)
  sort_free(c);
 if (f)
  sort_free(f);
 regfree(&re);

 return (ret);
}
