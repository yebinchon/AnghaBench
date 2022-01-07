
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct excludes {int pattern; struct excludes* next; } ;
struct dirent {scalar_t__ d_fileno; char* d_name; } ;


 int FNM_PATHNAME ;
 struct excludes* excludes_list ;
 scalar_t__ fnmatch (int ,char*,int ) ;

__attribute__((used)) static int
selectfile(const struct dirent *dp)
{
 struct excludes *excl;

 if (dp->d_fileno == 0)
  return (0);


 if (dp->d_name[0] == '.' && (dp->d_name[1] == '\0' ||
     (dp->d_name[1] == '.' && dp->d_name[2] == '\0')))
  return (0);


 for (excl = excludes_list; excl != ((void*)0); excl = excl->next)
  if (fnmatch(excl->pattern, dp->d_name, FNM_PATHNAME) == 0)
   return (0);

 return (1);
}
