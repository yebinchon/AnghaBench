
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int64_t ;
typedef int buf ;


 int HN_AUTOSCALE ;
 int HN_DECIMAL ;
 int HN_NOSPACE ;
 int asprintf (char**,char*,char const*,char const*,char const*,char const*,char*,...) ;
 int assert (int ) ;
 int err (int,char*) ;
 int free (char*) ;
 int humanize_number (char*,int,int ,char*,int ,int) ;
 scalar_t__ str2int64 (char const*,int *) ;
 char* strdup (char*) ;
 scalar_t__ strlen (char const*) ;
 char* strsep (char**,char*) ;

__attribute__((used)) static char *
humanize_amount(char *rule)
{
 int64_t num;
 const char *subject, *subject_id, *resource, *action, *amount, *per;
 char *copy, *humanized, buf[6], *tofree;
 int ret;

 tofree = copy = strdup(rule);
 if (copy == ((void*)0))
  err(1, "strdup");

 subject = strsep(&copy, ":");
 subject_id = strsep(&copy, ":");
 resource = strsep(&copy, ":");
 action = strsep(&copy, "=/");
 amount = strsep(&copy, "/");
 per = copy;

 if (amount == ((void*)0) || strlen(amount) == 0 ||
     str2int64(amount, &num) != 0) {
  free(tofree);
  return (rule);
 }

 assert(subject != ((void*)0));
 assert(subject_id != ((void*)0));
 assert(resource != ((void*)0));
 assert(action != ((void*)0));

 if (humanize_number(buf, sizeof(buf), num, "", HN_AUTOSCALE,
     HN_DECIMAL | HN_NOSPACE) == -1)
  err(1, "humanize_number");

 if (per == ((void*)0)) {
  ret = asprintf(&humanized, "%s:%s:%s:%s=%s",
      subject, subject_id, resource, action, buf);
 } else {
  ret = asprintf(&humanized, "%s:%s:%s:%s=%s/%s",
      subject, subject_id, resource, action, buf, per);
 }

 if (ret <= 0)
  err(1, "asprintf");

 free(tofree);
 return (humanized);
}
