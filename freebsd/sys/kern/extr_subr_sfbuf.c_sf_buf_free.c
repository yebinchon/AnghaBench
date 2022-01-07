
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sf_buf {scalar_t__ ref_count; int * m; } ;


 int LIST_REMOVE (struct sf_buf*,int ) ;
 scalar_t__ PMAP_HAS_DMAP ;
 int TAILQ_INSERT_TAIL (int *,struct sf_buf*,int ) ;
 int free_entry ;
 int list_entry ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int nsfbufsused ;
 scalar_t__ sf_buf_alloc_want ;
 int sf_buf_freelist ;
 int sf_buf_lock ;
 scalar_t__ sf_buf_unmap (struct sf_buf*) ;
 int wakeup (int *) ;

void
sf_buf_free(struct sf_buf *sf)
{

 if (PMAP_HAS_DMAP)
  return;

 mtx_lock(&sf_buf_lock);
 sf->ref_count--;
 if (sf->ref_count == 0) {
  TAILQ_INSERT_TAIL(&sf_buf_freelist, sf, free_entry);
  nsfbufsused--;
  if (sf_buf_unmap(sf)) {
   sf->m = ((void*)0);
   LIST_REMOVE(sf, list_entry);
  }
  if (sf_buf_alloc_want > 0)
   wakeup(&sf_buf_freelist);
 }
 mtx_unlock(&sf_buf_lock);
}
