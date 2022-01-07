
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct thread {int* td_retval; int td_ucred; TYPE_1__* td_proc; } ;
struct mqueue {int dummy; } ;
struct mqfs_node {int mn_gid; int mn_uid; int mn_mode; struct mqueue* mn_data; } ;
struct mq_attr {scalar_t__ mq_maxmsg; scalar_t__ mq_msgsize; } ;
struct filedesc {int fd_cmask; } ;
struct file {int dummy; } ;
typedef int mode_t ;
typedef int accmode_t ;
struct TYPE_4__ {int mi_lock; int mi_root; } ;
struct TYPE_3__ {struct filedesc* p_fd; } ;


 int ALLPERMS ;
 int AUDIT_ARG_FFLAGS (int) ;
 int AUDIT_ARG_MODE (int) ;
 int AUDIT_ARG_UPATH1_CANON (char*) ;
 int DTYPE_MQUEUE ;
 int EEXIST ;
 int EINVAL ;
 int ENFILE ;
 int ENOENT ;
 int ENOSPC ;
 int FREAD ;
 int FWRITE ;
 int MQFS_NAMELEN ;
 int O_CLOEXEC ;
 int O_CREAT ;
 int O_EXCL ;
 int O_NONBLOCK ;
 int S_ISTXT ;
 int VREAD ;
 int VREG ;
 int VWRITE ;
 int copyinstr (char const*,char*,int,int *) ;
 int falloc (struct thread*,struct file**,int*,int ) ;
 int fdclose (struct thread*,struct file*,int) ;
 int fdrop (struct file*,struct thread*) ;
 int finit (struct file*,int,int ,struct mqfs_node*,int *) ;
 scalar_t__ maxmsg ;
 scalar_t__ maxmsgsize ;
 struct mqfs_node* mqfs_create_file (int ,char*,int,int ,int) ;
 TYPE_2__ mqfs_data ;
 struct mqfs_node* mqfs_search (int ,char*,int,int ) ;
 int mqnode_addref (struct mqfs_node*) ;
 struct mqueue* mqueue_alloc (struct mq_attr const*) ;
 int mqueue_free (struct mqueue*) ;
 int mqueueops ;
 int * strchr (char*,char) ;
 scalar_t__ strcmp (char*,char*) ;
 int strlen (char*) ;
 int sx_xlock (int *) ;
 int sx_xunlock (int *) ;
 int vaccess (int ,int ,int ,int ,int ,int ,int *) ;

__attribute__((used)) static int
kern_kmq_open(struct thread *td, const char *upath, int flags, mode_t mode,
    const struct mq_attr *attr)
{
 char path[MQFS_NAMELEN + 1];
 struct mqfs_node *pn;
 struct filedesc *fdp;
 struct file *fp;
 struct mqueue *mq;
 int fd, error, len, cmode;

 AUDIT_ARG_FFLAGS(flags);
 AUDIT_ARG_MODE(mode);

 fdp = td->td_proc->p_fd;
 cmode = (((mode & ~fdp->fd_cmask) & ALLPERMS) & ~S_ISTXT);
 mq = ((void*)0);
 if ((flags & O_CREAT) != 0 && attr != ((void*)0)) {
  if (attr->mq_maxmsg <= 0 || attr->mq_maxmsg > maxmsg)
   return (EINVAL);
  if (attr->mq_msgsize <= 0 || attr->mq_msgsize > maxmsgsize)
   return (EINVAL);
 }

 error = copyinstr(upath, path, MQFS_NAMELEN + 1, ((void*)0));
        if (error)
  return (error);






 len = strlen(path);
 if (len < 2 || path[0] != '/' || strchr(path + 1, '/') != ((void*)0))
  return (EINVAL);




 if (strcmp(path, "/.") == 0 || strcmp(path, "/..") == 0)
  return (EINVAL);
 AUDIT_ARG_UPATH1_CANON(path);

 error = falloc(td, &fp, &fd, O_CLOEXEC);
 if (error)
  return (error);

 sx_xlock(&mqfs_data.mi_lock);
 pn = mqfs_search(mqfs_data.mi_root, path + 1, len - 1, td->td_ucred);
 if (pn == ((void*)0)) {
  if (!(flags & O_CREAT)) {
   error = ENOENT;
  } else {
   mq = mqueue_alloc(attr);
   if (mq == ((void*)0)) {
    error = ENFILE;
   } else {
    pn = mqfs_create_file(mqfs_data.mi_root,
             path + 1, len - 1, td->td_ucred,
      cmode);
    if (pn == ((void*)0)) {
     error = ENOSPC;
     mqueue_free(mq);
    }
   }
  }

  if (error == 0) {
   pn->mn_data = mq;
  }
 } else {
  if ((flags & (O_CREAT | O_EXCL)) == (O_CREAT | O_EXCL)) {
   error = EEXIST;
  } else {
   accmode_t accmode = 0;

   if (flags & FREAD)
    accmode |= VREAD;
   if (flags & FWRITE)
    accmode |= VWRITE;
   error = vaccess(VREG, pn->mn_mode, pn->mn_uid,
        pn->mn_gid, accmode, td->td_ucred, ((void*)0));
  }
 }

 if (error) {
  sx_xunlock(&mqfs_data.mi_lock);
  fdclose(td, fp, fd);
  fdrop(fp, td);
  return (error);
 }

 mqnode_addref(pn);
 sx_xunlock(&mqfs_data.mi_lock);

 finit(fp, flags & (FREAD | FWRITE | O_NONBLOCK), DTYPE_MQUEUE, pn,
     &mqueueops);

 td->td_retval[0] = fd;
 fdrop(fp, td);
 return (0);
}
