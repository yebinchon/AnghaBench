
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int rm_so; } ;
typedef TYPE_1__ regmatch_t ;
typedef int regex_t ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int REG_EXTENDED ;
 int REG_NOMATCH ;
 int _ (char*) ;
 scalar_t__ regcomp (int *,char const*,int ) ;
 int regexec (int *,char const*,int ,TYPE_1__*,int ) ;
 scalar_t__ skip_prefix (char const*,char*,char const**) ;
 int strtol (char const*,char**,int) ;
 int warning (int ,...) ;
 int * xmalloc (int) ;

__attribute__((used)) static int has_epoch_timestamp(const char *nameline)
{






 const char stamp_regexp[] =
  "^[0-2][0-9]:([0-5][0-9]):00(\\.0+)?"
  " "
  "([-+][0-2][0-9]:?[0-5][0-9])\n";
 const char *timestamp = ((void*)0), *cp, *colon;
 static regex_t *stamp;
 regmatch_t m[10];
 int zoneoffset, epoch_hour, hour, minute;
 int status;

 for (cp = nameline; *cp != '\n'; cp++) {
  if (*cp == '\t')
   timestamp = cp + 1;
 }
 if (!timestamp)
  return 0;





 if (skip_prefix(timestamp, "1969-12-31 ", &timestamp))
  epoch_hour = 24;
 else if (skip_prefix(timestamp, "1970-01-01 ", &timestamp))
  epoch_hour = 0;
 else
  return 0;

 if (!stamp) {
  stamp = xmalloc(sizeof(*stamp));
  if (regcomp(stamp, stamp_regexp, REG_EXTENDED)) {
   warning(_("Cannot prepare timestamp regexp %s"),
    stamp_regexp);
   return 0;
  }
 }

 status = regexec(stamp, timestamp, ARRAY_SIZE(m), m, 0);
 if (status) {
  if (status != REG_NOMATCH)
   warning(_("regexec returned %d for input: %s"),
    status, timestamp);
  return 0;
 }

 hour = strtol(timestamp, ((void*)0), 10);
 minute = strtol(timestamp + m[1].rm_so, ((void*)0), 10);

 zoneoffset = strtol(timestamp + m[3].rm_so + 1, (char **) &colon, 10);
 if (*colon == ':')
  zoneoffset = zoneoffset * 60 + strtol(colon + 1, ((void*)0), 10);
 else
  zoneoffset = (zoneoffset / 100) * 60 + (zoneoffset % 100);
 if (timestamp[m[3].rm_so] == '-')
  zoneoffset = -zoneoffset;

 return hour * 60 + minute - zoneoffset == epoch_hour * 60;
}
