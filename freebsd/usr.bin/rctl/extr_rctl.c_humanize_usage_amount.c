
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int64_t ;
typedef int buf ;


 int HN_AUTOSCALE ;
 int HN_DECIMAL ;
 int HN_NOSPACE ;
 int asprintf (char**,char*,char const*,char*) ;
 int assert (int ) ;
 int err (int,char*) ;
 int free (char*) ;
 int humanize_number (char*,int,int ,char*,int ,int) ;
 scalar_t__ str2int64 (char const*,int *) ;
 char* strdup (char*) ;
 char* strsep (char**,char*) ;

__attribute__((used)) static char *
humanize_usage_amount(char *usage)
{
 int64_t num;
 const char *resource, *amount;
 char *copy, *humanized, buf[6], *tofree;
 int ret;

 tofree = copy = strdup(usage);
 if (copy == ((void*)0))
  err(1, "strdup");

 resource = strsep(&copy, "=");
 amount = copy;

 assert(resource != ((void*)0));
 assert(amount != ((void*)0));

 if (str2int64(amount, &num) != 0 ||
     humanize_number(buf, sizeof(buf), num, "", HN_AUTOSCALE,
     HN_DECIMAL | HN_NOSPACE) == -1) {
  free(tofree);
  return (usage);
 }

 ret = asprintf(&humanized, "%s=%s", resource, buf);
 if (ret <= 0)
  err(1, "asprintf");

 free(tofree);
 return (humanized);
}
