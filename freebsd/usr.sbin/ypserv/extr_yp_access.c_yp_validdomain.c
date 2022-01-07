
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_mode; } ;
typedef int dompath ;


 int MAXPATHLEN ;
 int S_ISDIR (int ) ;
 scalar_t__ YPMAXDOMAIN ;
 int snprintf (char*,int,char*,char*,char const*) ;
 scalar_t__ stat (char*,struct stat*) ;
 scalar_t__ strchr (char const*,char) ;
 int strcmp (char const*,char*) ;
 scalar_t__ strlen (char const*) ;
 scalar_t__ strstr (char const*,char*) ;
 char* yp_dir ;

int
yp_validdomain(const char *domain)
{
 struct stat statbuf;
 char dompath[MAXPATHLEN + 2];

 if (domain == ((void*)0) || strstr(domain, "binding") ||
     !strcmp(domain, ".") || !strcmp(domain, "..") ||
     strchr(domain, '/') || strlen(domain) > YPMAXDOMAIN)
  return(1);

 snprintf(dompath, sizeof(dompath), "%s/%s", yp_dir, domain);

 if (stat(dompath, &statbuf) < 0 || !S_ISDIR(statbuf.st_mode))
  return(1);


 return(0);
}
