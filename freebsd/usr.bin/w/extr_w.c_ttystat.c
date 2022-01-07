
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ttybuf ;
struct stat {int st_mode; } ;


 int MAXPATHLEN ;
 scalar_t__ S_ISCHR (int ) ;
 char* _PATH_DEV ;
 int snprintf (char*,int,char*,char*,char*) ;
 scalar_t__ stat (char*,struct stat*) ;

__attribute__((used)) static struct stat *
ttystat(char *line)
{
 static struct stat sb;
 char ttybuf[MAXPATHLEN];

 (void)snprintf(ttybuf, sizeof(ttybuf), "%s%s", _PATH_DEV, line);
 if (stat(ttybuf, &sb) == 0 && S_ISCHR(sb.st_mode)) {
  return (&sb);
 } else
  return (((void*)0));
}
