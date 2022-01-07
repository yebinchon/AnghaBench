
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfsoptlist {int dummy; } ;
struct prison {int pr_parent; } ;
typedef int jsys ;


 int EINVAL ;
 int ENOENT ;
 int EPERM ;



 struct prison* osd_jail_get (int ,int ) ;
 int prison_lock (int ) ;
 int prison_unlock (int ) ;
 int shm_prison_slot ;
 int vfs_copyopt (struct vfsoptlist*,char*,int*,int) ;

__attribute__((used)) static int
shm_prison_check(void *obj, void *data)
{
 struct prison *pr = obj;
 struct prison *prpr;
 struct vfsoptlist *opts = data;
 int error, jsys;





 error = vfs_copyopt(opts, "sysvshm", &jsys, sizeof(jsys));
 if (error != ENOENT) {
  if (error != 0)
   return (error);
  switch (jsys) {
  case 130:
   break;
  case 128:
  case 129:
   prison_lock(pr->pr_parent);
   prpr = osd_jail_get(pr->pr_parent, shm_prison_slot);
   prison_unlock(pr->pr_parent);
   if (prpr == ((void*)0))
    return (EPERM);
   break;
  default:
   return (EINVAL);
  }
 }

 return (0);
}
