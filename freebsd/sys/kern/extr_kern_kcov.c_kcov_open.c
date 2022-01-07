
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct kcov_info {int mode; int * thread; int state; } ;
struct cdev {int dummy; } ;


 int KCOV_STATE_OPEN ;
 int M_KCOV_INFO ;
 int M_WAITOK ;
 int M_ZERO ;
 int devfs_set_cdevpriv (struct kcov_info*,int (*) (struct kcov_info*)) ;
 int kcov_mmap_cleanup (struct kcov_info*) ;
 struct kcov_info* malloc (int,int ,int) ;

__attribute__((used)) static int
kcov_open(struct cdev *dev, int oflags, int devtype, struct thread *td)
{
 struct kcov_info *info;
 int error;

 info = malloc(sizeof(struct kcov_info), M_KCOV_INFO, M_ZERO | M_WAITOK);
 info->state = KCOV_STATE_OPEN;
 info->thread = ((void*)0);
 info->mode = -1;

 if ((error = devfs_set_cdevpriv(info, kcov_mmap_cleanup)) != 0)
  kcov_mmap_cleanup(info);

 return (error);
}
