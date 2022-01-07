
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct mount {struct thread* mnt_susp_owner; } ;


 int VR_START_WRITE ;
 int quotaoff1 (struct thread*,struct mount*,int) ;
 int vfs_write_resume (struct mount*,int ) ;
 int vfs_write_suspend_umnt (struct mount*) ;

__attribute__((used)) static int
quotaoff_inchange1(struct thread *td, struct mount *mp, int type)
{
 int error;
 bool need_resume;
 if (mp->mnt_susp_owner == td) {
  need_resume = 0;
 } else {
  error = vfs_write_suspend_umnt(mp);
  if (error != 0)
   return (error);
  need_resume = 1;
 }
 error = quotaoff1(td, mp, type);
 if (need_resume)
  vfs_write_resume(mp, VR_START_WRITE);
 return (error);
}
