
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct filedescent {struct file* fde_file; int fde_caps; } ;
struct filedesc {int dummy; } ;
struct filecaps {int dummy; } ;
struct file {int dummy; } ;
typedef int cap_rights_t ;


 int EBADF ;
 int FILEDESC_LOCK_ASSERT (struct filedesc*) ;
 int cap_check (int ,int *) ;
 int cap_rights_fde_inline (struct filedescent*) ;
 struct filedescent* fdeget_locked (struct filedesc*,int) ;
 int filecaps_copy (int *,struct filecaps*,int) ;

int
fget_cap_locked(struct filedesc *fdp, int fd, cap_rights_t *needrightsp,
    struct file **fpp, struct filecaps *havecapsp)
{
 struct filedescent *fde;
 int error;

 FILEDESC_LOCK_ASSERT(fdp);

 fde = fdeget_locked(fdp, fd);
 if (fde == ((void*)0)) {
  error = EBADF;
  goto out;
 }







 if (havecapsp != ((void*)0))
  filecaps_copy(&fde->fde_caps, havecapsp, 1);

 *fpp = fde->fde_file;

 error = 0;
out:
 return (error);
}
