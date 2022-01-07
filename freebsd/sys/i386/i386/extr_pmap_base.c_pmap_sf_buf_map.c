
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sf_buf {int dummy; } ;
struct TYPE_2__ {int (* pm_sf_buf_map ) (struct sf_buf*) ;} ;


 TYPE_1__* pmap_methods_ptr ;
 int stub1 (struct sf_buf*) ;

void
pmap_sf_buf_map(struct sf_buf *sf)
{

 pmap_methods_ptr->pm_sf_buf_map(sf);
}
