
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uintmax_t ;
typedef scalar_t__ uint64_t ;


 int asprintf (char**,char*,char const*,char const*,char const*,char const*,int ,...) ;
 int assert (int ) ;
 scalar_t__ expand_number (char const*,scalar_t__*) ;
 int free (char*) ;
 char* strdup (char const*) ;
 scalar_t__ strlen (char const*) ;
 char* strsep (char**,char*) ;
 int warn (char*) ;
 int warnx (char*,char const*,char const*) ;

__attribute__((used)) static char *
expand_amount(const char *rule, const char *unexpanded_rule)
{
 uint64_t num;
 const char *subject, *subject_id, *resource, *action, *amount, *per;
 char *copy, *expanded, *tofree;
 int ret;

 tofree = copy = strdup(rule);
 if (copy == ((void*)0)) {
  warn("strdup");
  return (((void*)0));
 }

 subject = strsep(&copy, ":");
 subject_id = strsep(&copy, ":");
 resource = strsep(&copy, ":");
 action = strsep(&copy, "=/");
 amount = strsep(&copy, "/");
 per = copy;

 if (amount == ((void*)0) || strlen(amount) == 0) {



  free(tofree);
  copy = strdup(rule);
  if (copy == ((void*)0)) {
   warn("strdup");
   return (((void*)0));
  }
  return (copy);
 }

 assert(subject != ((void*)0));
 assert(subject_id != ((void*)0));
 assert(resource != ((void*)0));
 assert(action != ((void*)0));

 if (expand_number(amount, &num)) {
  warnx("malformed rule '%s': invalid numeric value '%s'",
      unexpanded_rule, amount);
  free(tofree);
  return (((void*)0));
 }

 if (per == ((void*)0)) {
  ret = asprintf(&expanded, "%s:%s:%s:%s=%ju",
      subject, subject_id, resource, action, (uintmax_t)num);
 } else {
  ret = asprintf(&expanded, "%s:%s:%s:%s=%ju/%s",
      subject, subject_id, resource, action, (uintmax_t)num, per);
 }

 if (ret <= 0) {
  warn("asprintf");
  free(tofree);
  return (((void*)0));
 }

 free(tofree);

 return (expanded);
}
