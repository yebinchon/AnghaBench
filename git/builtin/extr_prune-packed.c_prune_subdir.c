
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PRUNE_PACKED_DRY_RUN ;
 int display_progress (int ,unsigned int) ;
 int progress ;
 int rmdir (char const*) ;

__attribute__((used)) static int prune_subdir(unsigned int nr, const char *path, void *data)
{
 int *opts = data;
 display_progress(progress, nr + 1);
 if (!(*opts & PRUNE_PACKED_DRY_RUN))
  rmdir(path);
 return 0;
}
