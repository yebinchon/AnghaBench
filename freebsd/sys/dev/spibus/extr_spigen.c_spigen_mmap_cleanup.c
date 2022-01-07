
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spigen_mmap {scalar_t__ kvaddr; int bufsize; int * bufobj; } ;


 int M_DEVBUF ;
 int PAGE_SIZE ;
 int free (struct spigen_mmap*,int ) ;
 int pmap_qremove (scalar_t__,int) ;
 int vm_object_deallocate (int *) ;

__attribute__((used)) static void
spigen_mmap_cleanup(void *arg)
{
 struct spigen_mmap *mmap = arg;

 if (mmap->kvaddr != 0)
  pmap_qremove(mmap->kvaddr, mmap->bufsize / PAGE_SIZE);
 if (mmap->bufobj != ((void*)0))
  vm_object_deallocate(mmap->bufobj);
 free(mmap, M_DEVBUF);
}
