
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int u_char ;
struct vop_getextattr_args {int* a_size; int a_td; int a_cred; TYPE_1__* a_vp; int * a_uio; int a_name; int a_attrnamespace; } ;
struct inode {unsigned int i_ea_len; int * i_ea_area; } ;
struct TYPE_5__ {scalar_t__ v_type; } ;


 int ENOATTR ;
 int EOPNOTSUPP ;
 scalar_t__ VBLK ;
 scalar_t__ VCHR ;
 int VREAD ;
 struct inode* VTOI (TYPE_1__*) ;
 int extattr_check_cred (TYPE_1__*,int ,int ,int ,int ) ;
 int ffs_close_ea (TYPE_1__*,int ,int ,int ) ;
 int ffs_findextattr (int *,unsigned int,int ,int ,int *,int **) ;
 int ffs_open_ea (TYPE_1__*,int ,int ) ;
 int uiomove (int *,int,int *) ;

__attribute__((used)) static int
ffs_getextattr(struct vop_getextattr_args *ap)
{
 struct inode *ip;
 u_char *eae, *p;
 unsigned easize;
 int error, ealen;

 ip = VTOI(ap->a_vp);

 if (ap->a_vp->v_type == VCHR || ap->a_vp->v_type == VBLK)
  return (EOPNOTSUPP);

 error = extattr_check_cred(ap->a_vp, ap->a_attrnamespace,
     ap->a_cred, ap->a_td, VREAD);
 if (error)
  return (error);

 error = ffs_open_ea(ap->a_vp, ap->a_cred, ap->a_td);
 if (error)
  return (error);

 eae = ip->i_ea_area;
 easize = ip->i_ea_len;

 ealen = ffs_findextattr(eae, easize, ap->a_attrnamespace, ap->a_name,
     ((void*)0), &p);
 if (ealen >= 0) {
  error = 0;
  if (ap->a_size != ((void*)0))
   *ap->a_size = ealen;
  else if (ap->a_uio != ((void*)0))
   error = uiomove(p, ealen, ap->a_uio);
 } else
  error = ENOATTR;

 ffs_close_ea(ap->a_vp, 0, ap->a_cred, ap->a_td);
 return (error);
}
