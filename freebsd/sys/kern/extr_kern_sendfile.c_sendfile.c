
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uio {scalar_t__ uio_resid; } ;
struct thread {int dummy; } ;
struct sf_hdtr {int trl_cnt; int * trailers; int hdr_cnt; int * headers; } ;
struct sendfile_args {scalar_t__ nbytes; int * sbytes; int flags; int offset; int s; int fd; int * hdtr; } ;
struct file {int dummy; } ;
typedef scalar_t__ off_t ;
typedef int hdtr ;


 int AUDIT_ARG_FD (int ) ;
 int EINVAL ;
 int M_IOV ;
 int cap_pread_rights ;
 int copyin (int *,struct sf_hdtr*,int) ;
 int copyinuio (int *,int ,struct uio**) ;
 int copyout (scalar_t__*,int *,int) ;
 int fdrop (struct file*,struct thread*) ;
 int fget_read (struct thread*,int ,int *,struct file**) ;
 int fo_sendfile (struct file*,int ,struct uio*,struct uio*,int ,scalar_t__,scalar_t__*,int ,struct thread*) ;
 int free (struct uio*,int ) ;

__attribute__((used)) static int
sendfile(struct thread *td, struct sendfile_args *uap, int compat)
{
 struct sf_hdtr hdtr;
 struct uio *hdr_uio, *trl_uio;
 struct file *fp;
 off_t sbytes;
 int error;





 if (uap->offset < 0)
  return (EINVAL);

 sbytes = 0;
 hdr_uio = trl_uio = ((void*)0);

 if (uap->hdtr != ((void*)0)) {
  error = copyin(uap->hdtr, &hdtr, sizeof(hdtr));
  if (error != 0)
   goto out;
  if (hdtr.headers != ((void*)0)) {
   error = copyinuio(hdtr.headers, hdtr.hdr_cnt,
       &hdr_uio);
   if (error != 0)
    goto out;
  }
  if (hdtr.trailers != ((void*)0)) {
   error = copyinuio(hdtr.trailers, hdtr.trl_cnt,
       &trl_uio);
   if (error != 0)
    goto out;
  }
 }

 AUDIT_ARG_FD(uap->fd);





 if ((error = fget_read(td, uap->fd, &cap_pread_rights, &fp)) != 0)
  goto out;

 error = fo_sendfile(fp, uap->s, hdr_uio, trl_uio, uap->offset,
     uap->nbytes, &sbytes, uap->flags, td);
 fdrop(fp, td);

 if (uap->sbytes != ((void*)0))
  copyout(&sbytes, uap->sbytes, sizeof(off_t));

out:
 free(hdr_uio, M_IOV);
 free(trl_uio, M_IOV);
 return (error);
}
