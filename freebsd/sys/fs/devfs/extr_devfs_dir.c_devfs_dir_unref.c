
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dirlistent {scalar_t__ refcnt; struct dirlistent* dir; } ;


 int KASSERT (int,char*) ;
 int LIST_REMOVE (struct dirlistent*,int ) ;
 int M_DEVFS4 ;
 struct dirlistent* devfs_dir_findent_locked (char const*) ;
 int dirlist_mtx ;
 int free (struct dirlistent*,int ) ;
 int link ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

__attribute__((used)) static void
devfs_dir_unref(const char *dir)
{
 struct dirlistent *dle;

 if (*dir == '\0')
  return;

 mtx_lock(&dirlist_mtx);
 dle = devfs_dir_findent_locked(dir);
 KASSERT(dle != ((void*)0), ("devfs_dir_unref: dir %s not referenced", dir));
 dle->refcnt--;
 KASSERT(dle->refcnt >= 0, ("devfs_dir_unref: negative refcnt"));
 if (dle->refcnt == 0) {
  LIST_REMOVE(dle, link);
  mtx_unlock(&dirlist_mtx);
  free(dle->dir, M_DEVFS4);
  free(dle, M_DEVFS4);
 } else
  mtx_unlock(&dirlist_mtx);
}
