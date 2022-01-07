
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sf_buf {int kva; } ;


 int pmap_qremove (int ,int) ;

int
sf_buf_unmap(struct sf_buf *sf)
{

 pmap_qremove(sf->kva, 1);
 return (1);
}
