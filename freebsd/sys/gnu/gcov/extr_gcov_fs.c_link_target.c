
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int M_GCOV ;
 int M_NOWAIT ;
 int asprintf (char**,int ,char*,char const*,char const*,...) ;
 int free (char*,int ) ;
 char* strdup_flags (char const*,int ,int ) ;
 char* strrchr (char*,char) ;

__attribute__((used)) static char *
link_target(const char *dir, const char *path, const char *ext)
{
 char *target;
 char *old_ext;
 char *copy;

 copy = strdup_flags(path, M_GCOV, M_NOWAIT);
 if (!copy)
  return (((void*)0));
 old_ext = strrchr(copy, '.');
 if (old_ext)
  *old_ext = '\0';
 target = ((void*)0);
 if (dir)
  asprintf(&target, M_GCOV, "%s/%s.%s", dir, copy, ext);
 else
  asprintf(&target, M_GCOV, "%s.%s", copy, ext);
 free(copy, M_GCOV);

 return (target);
}
