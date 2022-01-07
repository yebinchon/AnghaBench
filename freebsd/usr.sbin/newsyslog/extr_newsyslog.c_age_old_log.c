
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int time_t ;
struct stat {int st_mtime; } ;
struct TYPE_2__ {int suffix; } ;


 int COMPRESS_TYPES ;
 unsigned int MAX (unsigned int,int ) ;
 int MAXPATHLEN ;
 char* alloca (size_t) ;
 char* archdirname ;
 scalar_t__ archtodir ;
 TYPE_1__* compress_type ;
 char* get_logfile_suffix (char*) ;
 int mtime_old_timelog (char*) ;
 int ptimeget_secs (int ) ;
 scalar_t__ stat (char*,struct stat*) ;
 int strlcat (char*,char const*,size_t) ;
 int strlcpy (char*,char const*,size_t) ;
 int strlen (int ) ;
 char* strrchr (char const*,char) ;
 int * timefnamefmt ;
 int timenow ;

__attribute__((used)) static int
age_old_log(const char *file)
{
 struct stat sb;
 const char *logfile_suffix;
 static unsigned int suffix_maxlen = 0;
 char *tmp;
 size_t tmpsiz;
 time_t mtime;
 int c;

 if (suffix_maxlen == 0) {
  for (c = 0; c < COMPRESS_TYPES; c++)
   suffix_maxlen = MAX(suffix_maxlen,
       strlen(compress_type[c].suffix));
 }

 tmpsiz = MAXPATHLEN + sizeof(".0") + suffix_maxlen + 1;
 tmp = alloca(tmpsiz);

 if (archtodir) {
  char *p;


  if (*archdirname == '/') {
   strlcpy(tmp, archdirname, tmpsiz);
  } else {

   strlcpy(tmp, file, tmpsiz);
   if ((p = strrchr(tmp, '/')) == ((void*)0))
    tmp[0] = '\0';
   else
    *(p + 1) = '\0';
   strlcat(tmp, archdirname, tmpsiz);
  }

  strlcat(tmp, "/", tmpsiz);


  if ((p = strrchr(file, '/')) == ((void*)0))
   strlcat(tmp, file, tmpsiz);
  else
   strlcat(tmp, p + 1, tmpsiz);
 } else {
  (void) strlcpy(tmp, file, tmpsiz);
 }

 if (timefnamefmt != ((void*)0)) {
  mtime = mtime_old_timelog(tmp);
  if (mtime == -1)
   return (-1);
 } else {
  strlcat(tmp, ".0", tmpsiz);
  logfile_suffix = get_logfile_suffix(tmp);
  if (logfile_suffix == ((void*)0))
   return (-1);
  (void) strlcat(tmp, logfile_suffix, tmpsiz);
  if (stat(tmp, &sb) < 0)
   return (-1);
  mtime = sb.st_mtime;
 }

 return ((int)(ptimeget_secs(timenow) - mtime + 1800) / 3600);
}
