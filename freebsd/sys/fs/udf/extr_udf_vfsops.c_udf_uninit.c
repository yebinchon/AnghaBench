
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfsconf {int dummy; } ;


 int * udf_zone_ds ;
 int * udf_zone_node ;
 int * udf_zone_trans ;
 int uma_zdestroy (int *) ;

__attribute__((used)) static int
udf_uninit(struct vfsconf *foo)
{

 if (udf_zone_trans != ((void*)0)) {
  uma_zdestroy(udf_zone_trans);
  udf_zone_trans = ((void*)0);
 }

 if (udf_zone_node != ((void*)0)) {
  uma_zdestroy(udf_zone_node);
  udf_zone_node = ((void*)0);
 }

 if (udf_zone_ds != ((void*)0)) {
  uma_zdestroy(udf_zone_ds);
  udf_zone_ds = ((void*)0);
 }

 return (0);
}
