
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int unicode_t ;
struct vfsconf {int dummy; } ;
struct udf_node {int dummy; } ;
struct udf_dirstream {int dummy; } ;


 int ENOMEM ;
 int MAXNAMLEN ;
 int printf (char*) ;
 int * udf_zone_ds ;
 int * udf_zone_node ;
 int * udf_zone_trans ;
 void* uma_zcreate (char*,int,int *,int *,int *,int *,int ,int ) ;

__attribute__((used)) static int
udf_init(struct vfsconf *foo)
{






 udf_zone_trans = uma_zcreate("UDF translation buffer, zone", MAXNAMLEN *
     sizeof(unicode_t), ((void*)0), ((void*)0), ((void*)0), ((void*)0), 0, 0);

 udf_zone_node = uma_zcreate("UDF Node zone", sizeof(struct udf_node),
     ((void*)0), ((void*)0), ((void*)0), ((void*)0), 0, 0);

 udf_zone_ds = uma_zcreate("UDF Dirstream zone",
     sizeof(struct udf_dirstream), ((void*)0), ((void*)0), ((void*)0), ((void*)0), 0, 0);

 if ((udf_zone_node == ((void*)0)) || (udf_zone_trans == ((void*)0)) ||
     (udf_zone_ds == ((void*)0))) {
  printf("Cannot create allocation zones.\n");
  return (ENOMEM);
 }

 return 0;
}
