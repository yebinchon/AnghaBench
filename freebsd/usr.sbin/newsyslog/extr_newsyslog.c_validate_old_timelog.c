
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tm {int dummy; } ;
struct stat {int st_mode; } ;
struct dirent {scalar_t__ d_type; char* d_name; size_t d_namlen; } ;
struct TYPE_2__ {int suffix; } ;


 int AT_SYMLINK_NOFOLLOW ;
 int COMPRESS_TYPES ;
 scalar_t__ DT_REG ;
 scalar_t__ DT_UNKNOWN ;
 int S_ISREG (int ) ;
 TYPE_1__* compress_type ;
 scalar_t__ fstatat (int,char*,struct stat*,int ) ;
 int memset (struct tm*,int ,int) ;
 int printf (char*,char*,...) ;
 scalar_t__ strcmp (char*,int ) ;
 size_t strlen (char const*) ;
 scalar_t__ strncmp (char*,char const*,size_t) ;
 char* strptime (char*,int ,struct tm*) ;
 int timefnamefmt ;
 scalar_t__ verbose ;

__attribute__((used)) static int
validate_old_timelog(int fd, const struct dirent *dp, const char *logfname,
    struct tm *tm)
{
 struct stat sb;
 size_t logfname_len;
 char *s;
 int c;

 logfname_len = strlen(logfname);

 if (dp->d_type != DT_REG) {





  if (dp->d_type != DT_UNKNOWN ||
      fstatat(fd, dp->d_name, &sb, AT_SYMLINK_NOFOLLOW) != 0 ||
      !S_ISREG(sb.st_mode))
   return (0);
 }

 if (strncmp(dp->d_name, logfname, logfname_len) != 0)
  return (0);

 if (dp->d_namlen == logfname_len)
  return (0);





 if (dp->d_name[logfname_len] != '.') {
  if (verbose)
   printf("Ignoring %s which has unexpected "
       "extension '%s'\n", dp->d_name,
       &dp->d_name[logfname_len]);
  return (0);
 }
 memset(tm, 0, sizeof(*tm));
 if ((s = strptime(&dp->d_name[logfname_len + 1],
     timefnamefmt, tm)) == ((void*)0)) {






  if (verbose)
   printf("Ignoring %s which does not "
       "match time format\n", dp->d_name);
  return (0);
 }

 for (c = 0; c < COMPRESS_TYPES; c++)
  if (strcmp(s, compress_type[c].suffix) == 0)

   return (1);

 if (verbose)
  printf("Ignoring %s which has unexpected extension '%s'\n",
      dp->d_name, s);

 return (0);
}
