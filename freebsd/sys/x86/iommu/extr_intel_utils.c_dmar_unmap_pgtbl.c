
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sf_buf {int dummy; } ;


 int sched_unpin () ;
 int sf_buf_free (struct sf_buf*) ;

void
dmar_unmap_pgtbl(struct sf_buf *sf)
{

 sf_buf_free(sf);
 sched_unpin();
}
