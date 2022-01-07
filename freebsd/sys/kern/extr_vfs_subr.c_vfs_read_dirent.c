
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_long ;
struct vop_readdir_args {int* a_ncookies; int ** a_cookies; TYPE_1__* a_uio; } ;
struct dirent {scalar_t__ d_reclen; } ;
typedef int off_t ;
struct TYPE_2__ {scalar_t__ uio_resid; } ;


 int ENAMETOOLONG ;
 int KASSERT (int **,char*) ;
 int M_TEMP ;
 int M_WAITOK ;
 int M_ZERO ;
 int free (int **,int ) ;
 int * realloc (int *,int,int ,int) ;
 int uiomove (struct dirent*,scalar_t__,TYPE_1__*) ;

int
vfs_read_dirent(struct vop_readdir_args *ap, struct dirent *dp, off_t off)
{
 int error;

 if (dp->d_reclen > ap->a_uio->uio_resid)
  return (ENAMETOOLONG);
 error = uiomove(dp, dp->d_reclen, ap->a_uio);
 if (error) {
  if (ap->a_ncookies != ((void*)0)) {
   if (ap->a_cookies != ((void*)0))
    free(ap->a_cookies, M_TEMP);
   ap->a_cookies = ((void*)0);
   *ap->a_ncookies = 0;
  }
  return (error);
 }
 if (ap->a_ncookies == ((void*)0))
  return (0);

 KASSERT(ap->a_cookies,
     ("NULL ap->a_cookies value with non-NULL ap->a_ncookies!"));

 *ap->a_cookies = realloc(*ap->a_cookies,
     (*ap->a_ncookies + 1) * sizeof(u_long), M_TEMP, M_WAITOK | M_ZERO);
 (*ap->a_cookies)[*ap->a_ncookies] = off;
 *ap->a_ncookies += 1;
 return (0);
}
