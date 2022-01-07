
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int display_progress (void*,unsigned int) ;

__attribute__((used)) static int fsck_subdir(unsigned int nr, const char *path, void *progress)
{
 display_progress(progress, nr + 1);
 return 0;
}
