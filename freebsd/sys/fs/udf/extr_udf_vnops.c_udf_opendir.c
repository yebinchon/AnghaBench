
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct udf_node {int dummy; } ;
struct udf_mnt {int dummy; } ;
struct udf_dirstream {int offset; int fsize; struct udf_mnt* udfmp; struct udf_node* node; } ;


 int M_WAITOK ;
 int M_ZERO ;
 int udf_zone_ds ;
 struct udf_dirstream* uma_zalloc (int ,int) ;

__attribute__((used)) static struct udf_dirstream *
udf_opendir(struct udf_node *node, int offset, int fsize, struct udf_mnt *udfmp)
{
 struct udf_dirstream *ds;

 ds = uma_zalloc(udf_zone_ds, M_WAITOK | M_ZERO);

 ds->node = node;
 ds->offset = offset;
 ds->udfmp = udfmp;
 ds->fsize = fsize;

 return (ds);
}
