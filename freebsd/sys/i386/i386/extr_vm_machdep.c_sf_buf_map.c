
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sf_buf {int dummy; } ;


 int pmap_sf_buf_map (struct sf_buf*) ;
 int sf_buf_shootdown (struct sf_buf*,int) ;

void
sf_buf_map(struct sf_buf *sf, int flags)
{

 pmap_sf_buf_map(sf);



}
