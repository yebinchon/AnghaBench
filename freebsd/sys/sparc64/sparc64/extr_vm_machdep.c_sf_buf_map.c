
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sf_buf {int m; int kva; } ;


 int pmap_qenter (int ,int *,int) ;

void
sf_buf_map(struct sf_buf *sf, int flags)
{

 pmap_qenter(sf->kva, &sf->m, 1);
}
