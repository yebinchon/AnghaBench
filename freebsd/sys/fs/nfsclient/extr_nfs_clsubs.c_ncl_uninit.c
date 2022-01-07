
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfsconf {int dummy; } ;


 int EOPNOTSUPP ;
 scalar_t__ NFSIOD_AVAILABLE ;
 int NFSLOCKIOD () ;
 int NFSUNLOCKIOD () ;
 int PWAIT ;
 int msleep (int*,int *,int ,char*,int ) ;
 int ncl_iod_mutex ;
 scalar_t__ ncl_iodmax ;
 scalar_t__* ncl_iodwant ;
 int ncl_nhuninit () ;
 int ncl_numasync ;
 int wakeup (scalar_t__*) ;

int
ncl_uninit(struct vfsconf *vfsp)
{
 return (EOPNOTSUPP);

}
