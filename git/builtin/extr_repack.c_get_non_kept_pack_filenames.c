
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct string_list {int nr; TYPE_1__* items; } ;
struct dirent {int d_name; } ;
struct TYPE_2__ {int string; } ;
typedef int DIR ;


 int closedir (int *) ;
 int file_exists (int ) ;
 int free (char*) ;
 int fspathcmp (int ,int ) ;
 int mkpath (char*,int ,char*) ;
 int * opendir (int ) ;
 int packdir ;
 struct dirent* readdir (int *) ;
 int string_list_append_nodup (struct string_list*,char*) ;
 int strip_suffix (int ,char*,size_t*) ;
 char* xmemdupz (int ,size_t) ;

__attribute__((used)) static void get_non_kept_pack_filenames(struct string_list *fname_list,
     const struct string_list *extra_keep)
{
 DIR *dir;
 struct dirent *e;
 char *fname;

 if (!(dir = opendir(packdir)))
  return;

 while ((e = readdir(dir)) != ((void*)0)) {
  size_t len;
  int i;

  for (i = 0; i < extra_keep->nr; i++)
   if (!fspathcmp(e->d_name, extra_keep->items[i].string))
    break;
  if (extra_keep->nr > 0 && i < extra_keep->nr)
   continue;

  if (!strip_suffix(e->d_name, ".pack", &len))
   continue;

  fname = xmemdupz(e->d_name, len);

  if (!file_exists(mkpath("%s/%s.keep", packdir, fname)))
   string_list_append_nodup(fname_list, fname);
  else
   free(fname);
 }
 closedir(dir);
}
