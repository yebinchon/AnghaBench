
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ttybuf ;
struct stat {int dummy; } ;


 int MAXPATHLEN ;
 char* _PATH_DEV ;
 int snprintf (char*,int,char*,char*,char*) ;
 scalar_t__ stat (char*,struct stat*) ;

__attribute__((used)) static int
ttystat(char *line)
{
 struct stat sb;
 char ttybuf[MAXPATHLEN];

 (void)snprintf(ttybuf, sizeof(ttybuf), "%s%s", _PATH_DEV, line);
 if (stat(ttybuf, &sb) == 0) {
  return (0);
 } else
  return (-1);
}
