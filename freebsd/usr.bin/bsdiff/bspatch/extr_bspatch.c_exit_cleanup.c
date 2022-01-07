
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int dirfd ;
 int * newfile ;
 scalar_t__ unlinkat (int,int *,int ) ;
 int warn (char*) ;

__attribute__((used)) static void
exit_cleanup(void)
{

 if (dirfd != -1 && newfile != ((void*)0))
  if (unlinkat(dirfd, newfile, 0))
   warn("unlinkat");
}
