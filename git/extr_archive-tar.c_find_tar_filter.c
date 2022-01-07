
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archiver {int * name; } ;


 int nr_tar_filters ;
 int strncmp (int *,char const*,int) ;
 struct archiver** tar_filters ;

__attribute__((used)) static struct archiver *find_tar_filter(const char *name, int len)
{
 int i;
 for (i = 0; i < nr_tar_filters; i++) {
  struct archiver *ar = tar_filters[i];
  if (!strncmp(ar->name, name, len) && !ar->name[len])
   return ar;
 }
 return ((void*)0);
}
