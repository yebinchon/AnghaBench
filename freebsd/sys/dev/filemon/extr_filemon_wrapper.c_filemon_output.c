
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uio {int uio_iovcnt; size_t uio_resid; scalar_t__ uio_offset; int uio_td; int uio_rw; int uio_segflg; struct iovec* uio_iov; } ;
struct iovec {char* iov_base; size_t iov_len; } ;
struct filemon {int error; int cred; TYPE_1__* fp; } ;
typedef scalar_t__ off_t ;
struct TYPE_2__ {scalar_t__ f_type; } ;


 scalar_t__ DTYPE_VNODE ;
 int UIO_SYSSPACE ;
 int UIO_WRITE ;
 int bwillwrite () ;
 int curthread ;
 int fo_write (TYPE_1__*,struct uio*,int ,int ,int ) ;

__attribute__((used)) static void
filemon_output(struct filemon *filemon, char *msg, size_t len)
{
 struct uio auio;
 struct iovec aiov;
 int error;

 if (filemon->fp == ((void*)0))
  return;

 aiov.iov_base = msg;
 aiov.iov_len = len;
 auio.uio_iov = &aiov;
 auio.uio_iovcnt = 1;
 auio.uio_resid = len;
 auio.uio_segflg = UIO_SYSSPACE;
 auio.uio_rw = UIO_WRITE;
 auio.uio_td = curthread;
 auio.uio_offset = (off_t) -1;

 if (filemon->fp->f_type == DTYPE_VNODE)
  bwillwrite();

 error = fo_write(filemon->fp, &auio, filemon->cred, 0, curthread);
 if (error != 0 && filemon->error == 0)
  filemon->error = error;
}
