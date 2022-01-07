
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct vop_bmap_args {int* a_bnp; int a_bn; int* a_runp; scalar_t__* a_runb; int ** a_bop; int a_vp; } ;
struct udf_node {TYPE_2__* udfmp; } ;
typedef int daddr_t ;
struct TYPE_4__ {int bshift; TYPE_1__* im_devvp; } ;
struct TYPE_3__ {int v_bufobj; } ;


 int DEV_BSHIFT ;
 int EOPNOTSUPP ;
 int MAXBSIZE ;
 int UDF_INVALID_BMAP ;
 struct udf_node* VTON (int ) ;
 int udf_bmap_internal (struct udf_node*,int,int*,int*) ;

__attribute__((used)) static int
udf_bmap(struct vop_bmap_args *a)
{
 struct udf_node *node;
 uint32_t max_size;
 daddr_t lsector;
 int nblk;
 int error;

 node = VTON(a->a_vp);

 if (a->a_bop != ((void*)0))
  *a->a_bop = &node->udfmp->im_devvp->v_bufobj;
 if (a->a_bnp == ((void*)0))
  return (0);
 if (a->a_runb)
  *a->a_runb = 0;
 error = udf_bmap_internal(node, a->a_bn << node->udfmp->bshift,
     &lsector, &max_size);
 if (error == UDF_INVALID_BMAP)
  return (EOPNOTSUPP);
 if (error)
  return (error);


 *a->a_bnp = lsector << (node->udfmp->bshift - DEV_BSHIFT);





 if (a->a_runp) {
  nblk = (max_size >> node->udfmp->bshift) - 1;
  if (nblk <= 0)
   *a->a_runp = 0;
  else if (nblk >= (MAXBSIZE >> node->udfmp->bshift))
   *a->a_runp = (MAXBSIZE >> node->udfmp->bshift) - 1;
  else
   *a->a_runp = nblk;
 }

 if (a->a_runb) {
  *a->a_runb = 0;
 }

 return (0);
}
