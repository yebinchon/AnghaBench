
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vop_read_args {struct uio* a_uio; struct vnode* a_vp; } ;
struct vnode {scalar_t__ v_type; } ;
struct uio {int dummy; } ;
struct mqueue {int mq_msgsize; int mq_curmsgs; int mq_maxmsg; int mq_totalbytes; } ;
typedef int buf ;


 int EINVAL ;
 scalar_t__ VREG ;
 struct mqueue* VTOMQ (struct vnode*) ;
 int snprintf (char*,int,char*,int ,int ,int ,int ) ;
 int strlen (char*) ;
 int uiomove_frombuf (char*,int,struct uio*) ;

__attribute__((used)) static int
mqfs_read(struct vop_read_args *ap)
{
 char buf[80];
 struct vnode *vp = ap->a_vp;
 struct uio *uio = ap->a_uio;
 struct mqueue *mq;
 int len, error;

 if (vp->v_type != VREG)
  return (EINVAL);

 mq = VTOMQ(vp);
 snprintf(buf, sizeof(buf),
  "QSIZE:%-10ld MAXMSG:%-10ld CURMSG:%-10ld MSGSIZE:%-10ld\n",
  mq->mq_totalbytes,
  mq->mq_maxmsg,
  mq->mq_curmsgs,
  mq->mq_msgsize);
 buf[sizeof(buf)-1] = '\0';
 len = strlen(buf);
 error = uiomove_frombuf(buf, len, uio);
 return (error);
}
