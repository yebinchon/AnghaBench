
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct statfs {int f_mntonname; } ;


 scalar_t__ strcmp (int ,char const*) ;

__attribute__((used)) static const struct statfs *
find_statfs(const struct statfs *mntbuf, int nitems, const char *mountpoint)
{
 int i;

 for (i = 0; i < nitems; i++) {
  if (strcmp(mntbuf[i].f_mntonname, mountpoint) == 0)
   return (mntbuf + i);
 }

 return (((void*)0));
}
