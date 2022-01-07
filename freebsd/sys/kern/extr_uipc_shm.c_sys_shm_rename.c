
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int td_ucred; } ;
struct shmfd {scalar_t__ shm_refs; } ;
struct shm_rename_args {int flags; int path_to; int path_from; } ;
typedef int Fnv32_t ;


 int EEXIST ;
 int EINVAL ;
 int ENOENT ;
 int FNV1_32_INIT ;
 int KASSERT (int,char*) ;
 int MAXPATHLEN ;
 int M_SHMFD ;
 int M_WAITOK ;
 int SHM_RENAME_EXCHANGE ;
 int SHM_RENAME_NOREPLACE ;
 int copyinstr (int ,char*,int ,int *) ;
 int fnv_32_str (char*,int ) ;
 int free (char*,int ) ;
 char* malloc (int ,int ,int ) ;
 int shm_dict_lock ;
 int shm_drop (struct shmfd*) ;
 int shm_hold (struct shmfd*) ;
 int shm_insert (char*,int ,struct shmfd*) ;
 struct shmfd* shm_lookup (char*,int ) ;
 int shm_remove (char*,int ,int ) ;
 scalar_t__ strncmp (char*,char*,int ) ;
 int sx_xlock (int *) ;
 int sx_xunlock (int *) ;

int
sys_shm_rename(struct thread *td, struct shm_rename_args *uap)
{
 char *path_from = ((void*)0), *path_to = ((void*)0);
 Fnv32_t fnv_from, fnv_to;
 struct shmfd *fd_from;
 struct shmfd *fd_to;
 int error;
 int flags;

 flags = uap->flags;





 if ((flags & ~(
     SHM_RENAME_NOREPLACE |
     SHM_RENAME_EXCHANGE
     )) != 0) {
  error = EINVAL;
  goto out;
 }





 if ((flags & SHM_RENAME_NOREPLACE) != 0 &&
     (flags & SHM_RENAME_EXCHANGE) != 0) {
  error = EINVAL;
  goto out;
 }





 path_from = malloc(MAXPATHLEN, M_SHMFD, M_WAITOK);
 error = copyinstr(uap->path_from, path_from, MAXPATHLEN, ((void*)0));
 if (error)
  goto out;

 path_to = malloc(MAXPATHLEN, M_SHMFD, M_WAITOK);
 error = copyinstr(uap->path_to, path_to, MAXPATHLEN, ((void*)0));
 if (error)
  goto out;


 if (strncmp(path_from, path_to, MAXPATHLEN) == 0)
  goto out;

 fnv_from = fnv_32_str(path_from, FNV1_32_INIT);
 fnv_to = fnv_32_str(path_to, FNV1_32_INIT);

 sx_xlock(&shm_dict_lock);

 fd_from = shm_lookup(path_from, fnv_from);
 if (fd_from == ((void*)0)) {
  sx_xunlock(&shm_dict_lock);
  error = ENOENT;
  goto out;
 }

 fd_to = shm_lookup(path_to, fnv_to);
 if ((flags & SHM_RENAME_NOREPLACE) != 0 && fd_to != ((void*)0)) {
  sx_xunlock(&shm_dict_lock);
  error = EEXIST;
  goto out;
 }





 shm_hold(fd_from);
 error = shm_remove(path_from, fnv_from, td->td_ucred);





 KASSERT(error != ENOENT, ("Our shm disappeared during shm_rename: %s",
     path_from));
 if (error) {
  shm_drop(fd_from);
  sx_xunlock(&shm_dict_lock);
  goto out;
 }





 if ((flags & SHM_RENAME_EXCHANGE) != 0 && fd_to != ((void*)0))
  shm_hold(fd_to);
 error = shm_remove(path_to, fnv_to, td->td_ucred);
 if (error && error != ENOENT) {
  shm_insert(path_from, fnv_from, fd_from);
  shm_drop(fd_from);

  path_from = ((void*)0);
  sx_xunlock(&shm_dict_lock);
  goto out;
 }

 shm_insert(path_to, fnv_to, fd_from);


 path_to = ((void*)0);


 shm_drop(fd_from);





 if ((flags & SHM_RENAME_EXCHANGE) != 0 && fd_to != ((void*)0)) {
  shm_insert(path_from, fnv_from, fd_to);
  path_from = ((void*)0);
  shm_drop(fd_to);




 }

 error = 0;
 sx_xunlock(&shm_dict_lock);

out:
 if (path_from != ((void*)0))
  free(path_from, M_SHMFD);
 if (path_to != ((void*)0))
  free(path_to, M_SHMFD);
 return(error);
}
