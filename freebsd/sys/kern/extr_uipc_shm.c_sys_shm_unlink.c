
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct thread {TYPE_2__* td_ucred; } ;
struct shm_unlink_args {int path; } ;
struct TYPE_4__ {TYPE_1__* cr_prison; } ;
struct TYPE_3__ {char* pr_path; } ;
typedef int Fnv32_t ;


 int AUDIT_ARG_UPATH1_CANON (char*) ;
 int FNV1_32_INIT ;
 scalar_t__ KTRPOINT (int ,int ) ;
 int KTR_NAMEI ;
 scalar_t__ MAXPATHLEN ;
 int M_TEMP ;
 int M_WAITOK ;
 int copyinstr (int ,char*,scalar_t__,int *) ;
 int curthread ;
 int fnv_32_str (char*,int ) ;
 int free (char*,int ) ;
 int ktrnamei (char*) ;
 char* malloc (scalar_t__,int ,int ) ;
 int shm_dict_lock ;
 int shm_remove (char*,int ,TYPE_2__*) ;
 scalar_t__ strcmp (char const*,char*) ;
 size_t strlcpy (char*,char const*,scalar_t__) ;
 int sx_xlock (int *) ;
 int sx_xunlock (int *) ;

int
sys_shm_unlink(struct thread *td, struct shm_unlink_args *uap)
{
 char *path;
 const char *pr_path;
 size_t pr_pathlen;
 Fnv32_t fnv;
 int error;

 path = malloc(MAXPATHLEN, M_TEMP, M_WAITOK);
 pr_path = td->td_ucred->cr_prison->pr_path;
 pr_pathlen = strcmp(pr_path, "/") == 0 ? 0
     : strlcpy(path, pr_path, MAXPATHLEN);
 error = copyinstr(uap->path, path + pr_pathlen, MAXPATHLEN - pr_pathlen,
     ((void*)0));
 if (error) {
  free(path, M_TEMP);
  return (error);
 }




 AUDIT_ARG_UPATH1_CANON(path);
 fnv = fnv_32_str(path, FNV1_32_INIT);
 sx_xlock(&shm_dict_lock);
 error = shm_remove(path, fnv, td->td_ucred);
 sx_xunlock(&shm_dict_lock);
 free(path, M_TEMP);

 return (error);
}
