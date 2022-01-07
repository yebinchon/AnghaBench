
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int td_ucred; } ;
struct sbuf {int dummy; } ;
struct nameidata {int ni_vp; } ;
typedef int ssize_t ;
typedef scalar_t__ off_t ;
typedef int buf ;


 int FOLLOW ;
 int FREAD ;
 int IO_NODELOCKED ;
 int LOOKUP ;
 int NDFREE (struct nameidata*,int ) ;
 int NDF_ONLY_PNBUF ;
 int NDINIT (struct nameidata*,int ,int ,int ,char*,struct thread*) ;
 int NOCRED ;
 int UIO_READ ;
 int UIO_SYSSPACE ;
 int VOP_UNLOCK (int ,int ) ;
 int sbuf_printf (struct sbuf*,char*,char*) ;
 int vn_close (int ,int,int ,struct thread*) ;
 int vn_open (struct nameidata*,int*,int ,int *) ;
 int vn_rdwr (int ,int ,char*,int,scalar_t__,int ,int ,int ,int ,int*,struct thread*) ;

__attribute__((used)) static int
vfs_mountroot_readconf(struct thread *td, struct sbuf *sb)
{
 static char buf[128];
 struct nameidata nd;
 off_t ofs;
 ssize_t resid;
 int error, flags, len;

 NDINIT(&nd, LOOKUP, FOLLOW, UIO_SYSSPACE, "/.mount.conf", td);
 flags = FREAD;
 error = vn_open(&nd, &flags, 0, ((void*)0));
 if (error)
  return (error);

 NDFREE(&nd, NDF_ONLY_PNBUF);
 ofs = 0;
 len = sizeof(buf) - 1;
 while (1) {
  error = vn_rdwr(UIO_READ, nd.ni_vp, buf, len, ofs,
      UIO_SYSSPACE, IO_NODELOCKED, td->td_ucred,
      NOCRED, &resid, td);
  if (error)
   break;
  if (resid == len)
   break;
  buf[len - resid] = 0;
  sbuf_printf(sb, "%s", buf);
  ofs += len - resid;
 }

 VOP_UNLOCK(nd.ni_vp, 0);
 vn_close(nd.ni_vp, FREAD, td->td_ucred, td);
 return (error);
}
