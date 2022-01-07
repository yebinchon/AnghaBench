
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_page_t ;
struct image_params {int * firstpage; } ;


 int PQ_ACTIVE ;
 int sf_buf_free (int *) ;
 int sf_buf_page (int *) ;
 int vm_page_unwire (int ,int ) ;

void
exec_unmap_first_page(struct image_params *imgp)
{
 vm_page_t m;

 if (imgp->firstpage != ((void*)0)) {
  m = sf_buf_page(imgp->firstpage);
  sf_buf_free(imgp->firstpage);
  imgp->firstpage = ((void*)0);
  vm_page_unwire(m, PQ_ACTIVE);
 }
}
