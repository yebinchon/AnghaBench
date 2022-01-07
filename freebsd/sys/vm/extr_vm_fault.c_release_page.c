
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct faultstate {int * m; } ;


 int vm_page_deactivate (int *) ;
 int vm_page_lock (int *) ;
 int vm_page_unlock (int *) ;
 int vm_page_xunbusy (int *) ;

__attribute__((used)) static inline void
release_page(struct faultstate *fs)
{

 if (fs->m != ((void*)0)) {




  vm_page_lock(fs->m);
  vm_page_deactivate(fs->m);
  vm_page_unlock(fs->m);
  vm_page_xunbusy(fs->m);
  fs->m = ((void*)0);
 }
}
