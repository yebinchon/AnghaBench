
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct udf_mnt {int im_flags; struct udf_mnt* s_table; int im_dev; int im_devvp; int im_cp; scalar_t__ im_l2d; scalar_t__ im_d2l; } ;
struct mount {int mnt_flag; int * mnt_data; } ;
struct TYPE_2__ {int (* close ) (scalar_t__) ;} ;


 int FORCECLOSE ;
 int MNT_FORCE ;
 int MNT_ILOCK (struct mount*) ;
 int MNT_IUNLOCK (struct mount*) ;
 int MNT_LOCAL ;
 int M_UDFMOUNT ;
 int UDFMNT_KICONV ;
 struct udf_mnt* VFSTOUDFFS (struct mount*) ;
 int curthread ;
 int dev_rel (int ) ;
 int free (struct udf_mnt*,int ) ;
 int g_topology_lock () ;
 int g_topology_unlock () ;
 int g_vfs_close (int ) ;
 int stub1 (scalar_t__) ;
 int stub2 (scalar_t__) ;
 TYPE_1__* udf_iconv ;
 int vflush (struct mount*,int ,int,int ) ;
 int vrele (int ) ;

__attribute__((used)) static int
udf_unmount(struct mount *mp, int mntflags)
{
 struct udf_mnt *udfmp;
 int error, flags = 0;

 udfmp = VFSTOUDFFS(mp);

 if (mntflags & MNT_FORCE)
  flags |= FORCECLOSE;

 if ((error = vflush(mp, 0, flags, curthread)))
  return (error);

 if (udfmp->im_flags & UDFMNT_KICONV && udf_iconv) {
  if (udfmp->im_d2l)
   udf_iconv->close(udfmp->im_d2l);




 }

 g_topology_lock();
 g_vfs_close(udfmp->im_cp);
 g_topology_unlock();
 vrele(udfmp->im_devvp);
 dev_rel(udfmp->im_dev);

 if (udfmp->s_table != ((void*)0))
  free(udfmp->s_table, M_UDFMOUNT);

 free(udfmp, M_UDFMOUNT);

 mp->mnt_data = ((void*)0);
 MNT_ILOCK(mp);
 mp->mnt_flag &= ~MNT_LOCAL;
 MNT_IUNLOCK(mp);

 return (0);
}
