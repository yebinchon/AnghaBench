
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
typedef int u_int ;
struct thread {int dummy; } ;
struct cdev {int dummy; } ;
struct auditpipe_ioctl_preselect {int aip_mask; int aip_auid; } ;
struct audit_pipe {int ap_qbyteslen; int ap_qoffset; int ap_preselect_mode; int ap_drops; int ap_reads; int ap_inserts; void* ap_preselect_naflags; void* ap_preselect_flags; int ap_qlimit; int ap_qlen; int ap_sigio; int ap_flags; } ;
typedef scalar_t__ caddr_t ;
typedef void* au_mask_t ;
typedef int au_id_t ;
 int AUDIT_PIPE_ASYNC ;
 int AUDIT_PIPE_LOCK (struct audit_pipe*) ;
 int AUDIT_PIPE_NBIO ;
 int AUDIT_PIPE_QLIMIT_MAX ;
 int AUDIT_PIPE_QLIMIT_MIN ;
 int AUDIT_PIPE_SX_XLOCK_SIG (struct audit_pipe*) ;
 int AUDIT_PIPE_SX_XUNLOCK (struct audit_pipe*) ;
 int AUDIT_PIPE_UNLOCK (struct audit_pipe*) ;
 int EINTR ;
 int EINVAL ;
 int ENOTTY ;





 int MAXAUDITDATA ;
 int audit_pipe_flush (struct audit_pipe*) ;
 int audit_pipe_preselect_delete (struct audit_pipe*,int ) ;
 int audit_pipe_preselect_flush (struct audit_pipe*) ;
 int audit_pipe_preselect_get (struct audit_pipe*,int ,int *) ;
 int audit_pipe_preselect_set (struct audit_pipe*,int ,int ) ;
 int devfs_get_cdevpriv (void**) ;
 int fgetown (int *) ;
 int fsetown (int,int *) ;

__attribute__((used)) static int
audit_pipe_ioctl(struct cdev *dev, u_long cmd, caddr_t data, int flag,
    struct thread *td)
{
 struct auditpipe_ioctl_preselect *aip;
 struct audit_pipe *ap;
 au_mask_t *maskp;
 int error, mode;
 au_id_t auid;

 error = devfs_get_cdevpriv((void **)&ap);
 if (error != 0)
  return (error);






 switch (cmd) {
 case 130:
  AUDIT_PIPE_LOCK(ap);
  if (*(int *)data)
   ap->ap_flags |= AUDIT_PIPE_NBIO;
  else
   ap->ap_flags &= ~AUDIT_PIPE_NBIO;
  AUDIT_PIPE_UNLOCK(ap);
  error = 0;
  break;

 case 129:
  AUDIT_PIPE_LOCK(ap);
  *(int *)data = ap->ap_qbyteslen - ap->ap_qoffset;
  AUDIT_PIPE_UNLOCK(ap);
  error = 0;
  break;

 case 132:
  AUDIT_PIPE_LOCK(ap);
  if (*(int *)data)
   ap->ap_flags |= AUDIT_PIPE_ASYNC;
  else
   ap->ap_flags &= ~AUDIT_PIPE_ASYNC;
  AUDIT_PIPE_UNLOCK(ap);
  error = 0;
  break;

 case 128:
  error = fsetown(*(int *)data, &ap->ap_sigio);
  break;

 case 131:
  *(int *)data = fgetown(&ap->ap_sigio);
  error = 0;
  break;

 case 145:
  *(u_int *)data = ap->ap_qlen;
  error = 0;
  break;

 case 144:
  *(u_int *)data = ap->ap_qlimit;
  error = 0;
  break;

 case 133:

  if (*(u_int *)data >= AUDIT_PIPE_QLIMIT_MIN &&
      *(u_int *)data <= AUDIT_PIPE_QLIMIT_MAX) {
   ap->ap_qlimit = *(u_int *)data;
   error = 0;
  } else
   error = EINVAL;
  break;

 case 142:
  *(u_int *)data = AUDIT_PIPE_QLIMIT_MIN;
  error = 0;
  break;

 case 143:
  *(u_int *)data = AUDIT_PIPE_QLIMIT_MAX;
  error = 0;
  break;

 case 148:
  AUDIT_PIPE_LOCK(ap);
  maskp = (au_mask_t *)data;
  *maskp = ap->ap_preselect_flags;
  AUDIT_PIPE_UNLOCK(ap);
  error = 0;
  break;

 case 136:
  AUDIT_PIPE_LOCK(ap);
  maskp = (au_mask_t *)data;
  ap->ap_preselect_flags = *maskp;
  AUDIT_PIPE_UNLOCK(ap);
  error = 0;
  break;

 case 146:
  AUDIT_PIPE_LOCK(ap);
  maskp = (au_mask_t *)data;
  *maskp = ap->ap_preselect_naflags;
  AUDIT_PIPE_UNLOCK(ap);
  error = 0;
  break;

 case 134:
  AUDIT_PIPE_LOCK(ap);
  maskp = (au_mask_t *)data;
  ap->ap_preselect_naflags = *maskp;
  AUDIT_PIPE_UNLOCK(ap);
  error = 0;
  break;

 case 149:
  aip = (struct auditpipe_ioctl_preselect *)data;
  error = audit_pipe_preselect_get(ap, aip->aip_auid,
      &aip->aip_mask);
  break;

 case 137:
  aip = (struct auditpipe_ioctl_preselect *)data;
  audit_pipe_preselect_set(ap, aip->aip_auid, aip->aip_mask);
  error = 0;
  break;

 case 155:
  auid = *(au_id_t *)data;
  error = audit_pipe_preselect_delete(ap, auid);
  break;

 case 153:
  audit_pipe_preselect_flush(ap);
  error = 0;
  break;

 case 147:
  AUDIT_PIPE_LOCK(ap);
  *(int *)data = ap->ap_preselect_mode;
  AUDIT_PIPE_UNLOCK(ap);
  error = 0;
  break;

 case 135:
  mode = *(int *)data;
  switch (mode) {
  case 138:
  case 139:
   AUDIT_PIPE_LOCK(ap);
   ap->ap_preselect_mode = mode;
   AUDIT_PIPE_UNLOCK(ap);
   error = 0;
   break;

  default:
   error = EINVAL;
  }
  break;

 case 154:
  if (AUDIT_PIPE_SX_XLOCK_SIG(ap) != 0)
   return (EINTR);
  AUDIT_PIPE_LOCK(ap);
  audit_pipe_flush(ap);
  AUDIT_PIPE_UNLOCK(ap);
  AUDIT_PIPE_SX_XUNLOCK(ap);
  error = 0;
  break;

 case 150:
  *(u_int *)data = MAXAUDITDATA;
  error = 0;
  break;

 case 151:
  *(u_int *)data = ap->ap_inserts;
  error = 0;
  break;

 case 141:
  *(u_int *)data = ap->ap_reads;
  error = 0;
  break;

 case 152:
  *(u_int *)data = ap->ap_drops;
  error = 0;
  break;

 case 140:
  *(u_int *)data = 0;
  error = 0;
  break;

 default:
  error = ENOTTY;
 }
 return (error);
}
