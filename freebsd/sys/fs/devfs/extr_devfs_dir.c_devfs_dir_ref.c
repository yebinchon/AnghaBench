
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dirlistent {int refcnt; struct dirlistent* dir; } ;


 int LIST_INSERT_HEAD (int *,struct dirlistent*,int ) ;
 int M_DEVFS4 ;
 int M_WAITOK ;
 struct dirlistent* devfs_dir_findent_locked (char const*) ;
 int devfs_dirlist ;
 int dirlist_mtx ;
 int free (struct dirlistent*,int ) ;
 int link ;
 struct dirlistent* malloc (int,int ,int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 struct dirlistent* strdup (char const*,int ) ;

__attribute__((used)) static void
devfs_dir_ref(const char *dir)
{
 struct dirlistent *dle, *dle_new;

 if (*dir == '\0')
  return;

 dle_new = malloc(sizeof(*dle), M_DEVFS4, M_WAITOK);
 dle_new->dir = strdup(dir, M_DEVFS4);
 dle_new->refcnt = 1;

 mtx_lock(&dirlist_mtx);
 dle = devfs_dir_findent_locked(dir);
 if (dle != ((void*)0)) {
  dle->refcnt++;
  mtx_unlock(&dirlist_mtx);
  free(dle_new->dir, M_DEVFS4);
  free(dle_new, M_DEVFS4);
  return;
 }
 LIST_INSERT_HEAD(&devfs_dirlist, dle_new, link);
 mtx_unlock(&dirlist_mtx);
}
