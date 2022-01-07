
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct sockaddr_un {int sun_len; int sun_path; int sun_family; } ;
struct sockaddr {int dummy; } ;
struct netconfig {int dummy; } ;
struct gssd_syscall_args {int path; } ;
typedef int path ;
typedef int CLIENT ;


 int AF_LOCAL ;
 int CLNT_CLOSE (int *) ;
 int CLNT_CONTROL (int *,int ,int*) ;
 int CLNT_RELEASE (int *) ;
 int CLSET_RETRIES ;
 int EINVAL ;
 int GSSD ;
 int GSSDVERS ;
 int MAXPATHLEN ;
 int PRIV_NFS_DAEMON ;
 int RPC_MAXDATASIZE ;
 int SUN_LEN (struct sockaddr_un*) ;
 int * clnt_reconnect_create (struct netconfig*,struct sockaddr*,int ,int ,int ,int ) ;
 int copyinstr (int ,char*,int,int *) ;
 struct netconfig* getnetconfigent (char*) ;
 int * kgss_gssd_handle ;
 int kgss_gssd_lock ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int priv_check (struct thread*,int ) ;
 int strlcpy (int ,char*,int) ;
 int strlen (char*) ;

int
sys_gssd_syscall(struct thread *td, struct gssd_syscall_args *uap)
{
        struct sockaddr_un sun;
        struct netconfig *nconf;
 char path[MAXPATHLEN];
 int error;
 CLIENT *cl, *oldcl;

 error = priv_check(td, PRIV_NFS_DAEMON);
 if (error)
  return (error);

 error = copyinstr(uap->path, path, sizeof(path), ((void*)0));
 if (error)
  return (error);
 if (strlen(path) + 1 > sizeof(sun.sun_path))
  return (EINVAL);

 if (path[0] != '\0') {
  sun.sun_family = AF_LOCAL;
  strlcpy(sun.sun_path, path, sizeof(sun.sun_path));
  sun.sun_len = SUN_LEN(&sun);

  nconf = getnetconfigent("local");
  cl = clnt_reconnect_create(nconf,
      (struct sockaddr *) &sun, GSSD, GSSDVERS,
      RPC_MAXDATASIZE, RPC_MAXDATASIZE);





  if (cl != ((void*)0)) {
   int retry_count = 5;
   CLNT_CONTROL(cl, CLSET_RETRIES, &retry_count);
  }
 } else
  cl = ((void*)0);

 mtx_lock(&kgss_gssd_lock);
 oldcl = kgss_gssd_handle;
 kgss_gssd_handle = cl;
 mtx_unlock(&kgss_gssd_lock);

 if (oldcl != ((void*)0)) {
  CLNT_CLOSE(oldcl);
  CLNT_RELEASE(oldcl);
 }

 return (0);
}
