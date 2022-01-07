
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct stat {int dummy; } ;
struct TYPE_2__ {char const* suffix; } ;


 int COMPRESS_TYPES ;
 int MAXPATHLEN ;
 TYPE_1__* compress_type ;
 scalar_t__ lstat (char*,struct stat*) ;
 int strlcat (char*,char const*,int) ;
 int strlcpy (char*,char const*,int) ;

__attribute__((used)) static const char *
get_logfile_suffix(const char *logfile)
{
 struct stat st;
 char zfile[MAXPATHLEN];
 int c;

 for (c = 0; c < COMPRESS_TYPES; c++) {
  (void) strlcpy(zfile, logfile, MAXPATHLEN);
  (void) strlcat(zfile, compress_type[c].suffix, MAXPATHLEN);
  if (lstat(zfile, &st) == 0)
   return (compress_type[c].suffix);
 }
 return (((void*)0));
}
