
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct kcov_info {scalar_t__ state; } ;
struct cdev {int dummy; } ;


 int EBUSY ;
 int KASSERT (int ,char*) ;
 scalar_t__ KCOV_STATE_RUNNING ;
 int devfs_get_cdevpriv (void**) ;

__attribute__((used)) static int
kcov_close(struct cdev *dev, int fflag, int devtype, struct thread *td)
{
 struct kcov_info *info;
 int error;


 if ((error = devfs_get_cdevpriv((void **)&info)) != 0)
  return (error);

 KASSERT(info != ((void*)0), ("kcov_close with no kcov_info structure"));


 if (info->state == KCOV_STATE_RUNNING)
  return (EBUSY);

 return (0);
}
