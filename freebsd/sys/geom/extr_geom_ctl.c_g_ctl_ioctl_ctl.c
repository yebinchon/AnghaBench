
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
struct thread {int dummy; } ;
struct gctl_req {int nerror; int lerror; scalar_t__ version; int serror; int error; int * arg; } ;
struct cdev {int dummy; } ;
typedef scalar_t__ caddr_t ;


 int EINVAL ;
 scalar_t__ GCTL_VERSION ;
 int G_F_CTLDUMP ;
 int M_WAITOK ;
 int VM_PROT_WRITE ;
 int copyout (int ,int ,int ) ;
 int g_ctl_req ;
 int g_debugflags ;
 int g_waitfor_event (int ,struct gctl_req*,int ,int *) ;
 int gctl_copyin (struct gctl_req*) ;
 int gctl_copyout (struct gctl_req*) ;
 int gctl_dump (struct gctl_req*) ;
 int gctl_error (struct gctl_req*,char*) ;
 int gctl_free (struct gctl_req*) ;
 int imin (int,scalar_t__) ;
 int sbuf_data (int ) ;
 scalar_t__ sbuf_done (int ) ;
 scalar_t__ sbuf_len (int ) ;
 int sbuf_new_auto () ;
 int useracc (int ,int,int ) ;

__attribute__((used)) static int
g_ctl_ioctl_ctl(struct cdev *dev, u_long cmd, caddr_t data, int fflag, struct thread *td)
{
 struct gctl_req *req;
 int nerror;

 req = (void *)data;
 req->nerror = 0;

 if (req->lerror < 2)
  return (EINVAL);
 if (!useracc(req->error, req->lerror, VM_PROT_WRITE))
  return (EINVAL);

 req->serror = sbuf_new_auto();

 if (req->version != GCTL_VERSION) {
  gctl_error(req, "kernel and libgeom version mismatch.");
  req->arg = ((void*)0);
 } else {

  gctl_copyin(req);

  if (g_debugflags & G_F_CTLDUMP)
   gctl_dump(req);

  if (!req->nerror) {
   g_waitfor_event(g_ctl_req, req, M_WAITOK, ((void*)0));
   gctl_copyout(req);
  }
 }
 if (sbuf_done(req->serror)) {
  copyout(sbuf_data(req->serror), req->error,
      imin(req->lerror, sbuf_len(req->serror) + 1));
 }

 nerror = req->nerror;
 gctl_free(req);
 return (nerror);
}
