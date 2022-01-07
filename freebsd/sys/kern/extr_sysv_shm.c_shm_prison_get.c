
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfsoptlist {int dummy; } ;
struct prison {int dummy; } ;
typedef int jsys ;


 int ENOENT ;
 int JAIL_SYS_DISABLE ;
 int JAIL_SYS_INHERIT ;
 int JAIL_SYS_NEW ;
 struct prison* osd_jail_get (struct prison*,int ) ;
 int prison_lock (struct prison*) ;
 int prison_unlock (struct prison*) ;
 int shm_prison_slot ;
 int vfs_setopt (struct vfsoptlist*,char*,int*,int) ;

__attribute__((used)) static int
shm_prison_get(void *obj, void *data)
{
 struct prison *pr = obj;
 struct prison *rpr;
 struct vfsoptlist *opts = data;
 int error, jsys;


 prison_lock(pr);
 rpr = osd_jail_get(pr, shm_prison_slot);
 prison_unlock(pr);
 jsys = rpr == ((void*)0) ? JAIL_SYS_DISABLE
     : rpr == pr ? JAIL_SYS_NEW : JAIL_SYS_INHERIT;
 error = vfs_setopt(opts, "sysvshm", &jsys, sizeof(jsys));
 if (error == ENOENT)
  error = 0;
 return (error);
}
