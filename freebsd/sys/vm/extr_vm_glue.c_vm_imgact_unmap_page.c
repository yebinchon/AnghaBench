
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_page_t ;
struct sf_buf {int dummy; } ;


 int PQ_ACTIVE ;
 int sched_unpin () ;
 int sf_buf_free (struct sf_buf*) ;
 int sf_buf_page (struct sf_buf*) ;
 int vm_page_unwire (int ,int ) ;

void
vm_imgact_unmap_page(struct sf_buf *sf)
{
 vm_page_t m;

 m = sf_buf_page(sf);
 sf_buf_free(sf);
 sched_unpin();
 vm_page_unwire(m, PQ_ACTIVE);
}
