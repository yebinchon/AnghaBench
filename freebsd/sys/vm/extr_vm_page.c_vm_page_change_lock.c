
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_page_t ;
struct mtx {int dummy; } ;


 int mtx_lock (struct mtx*) ;
 int mtx_unlock (struct mtx*) ;
 struct mtx* vm_page_lockptr (int ) ;

void
vm_page_change_lock(vm_page_t m, struct mtx **mtx)
{
 struct mtx *mtx1;

 mtx1 = vm_page_lockptr(m);
 if (*mtx == mtx1)
  return;
 if (*mtx != ((void*)0))
  mtx_unlock(*mtx);
 *mtx = mtx1;
 mtx_lock(mtx1);
}
