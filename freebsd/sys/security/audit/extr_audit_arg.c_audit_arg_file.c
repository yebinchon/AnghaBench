
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct vnode {int dummy; } ;
struct socket {scalar_t__ so_pcb; TYPE_1__* so_proto; int so_type; } ;
struct proc {int dummy; } ;
struct TYPE_9__ {int so_lport; int so_rport; int so_laddr; int so_raddr; int so_protocol; int so_domain; int so_type; } ;
struct TYPE_10__ {TYPE_4__ ar_arg_sockinfo; } ;
struct kaudit_record {TYPE_5__ k_ar; } ;
struct TYPE_8__ {int s_addr; } ;
struct TYPE_7__ {int s_addr; } ;
struct inpcb {int inp_lport; int inp_fport; TYPE_3__ inp_laddr; TYPE_2__ inp_faddr; } ;
struct file {int f_type; scalar_t__ f_data; struct vnode* f_vnode; } ;
struct TYPE_6__ {int pr_protocol; } ;


 int ARG_SET_VALID (struct kaudit_record*,int ) ;
 int ARG_SOCKINFO ;



 int INP_CHECK_SOCKAF (struct socket*,int ) ;
 int INP_RLOCK (struct inpcb*) ;
 int INP_RUNLOCK (struct inpcb*) ;
 int INP_SOCKAF (struct socket*) ;
 int LK_RETRY ;
 int LK_SHARED ;
 int PF_INET ;
 int SOCK_LOCK (struct socket*) ;
 int SOCK_UNLOCK (struct socket*) ;
 int VOP_UNLOCK (struct vnode*,int ) ;
 int audit_arg_vnode1 (struct vnode*) ;
 struct kaudit_record* currecord () ;
 int vn_lock (struct vnode*,int) ;

void
audit_arg_file(struct proc *p, struct file *fp)
{
 struct kaudit_record *ar;
 struct socket *so;
 struct inpcb *pcb;
 struct vnode *vp;

 ar = currecord();
 if (ar == ((void*)0))
  return;

 switch (fp->f_type) {
 case 128:
 case 130:



  vp = fp->f_vnode;
  vn_lock(vp, LK_SHARED | LK_RETRY);
  audit_arg_vnode1(vp);
  VOP_UNLOCK(vp, 0);
  break;

 case 129:
  so = (struct socket *)fp->f_data;
  if (INP_CHECK_SOCKAF(so, PF_INET)) {
   SOCK_LOCK(so);
   ar->k_ar.ar_arg_sockinfo.so_type =
       so->so_type;
   ar->k_ar.ar_arg_sockinfo.so_domain =
       INP_SOCKAF(so);
   ar->k_ar.ar_arg_sockinfo.so_protocol =
       so->so_proto->pr_protocol;
   SOCK_UNLOCK(so);
   pcb = (struct inpcb *)so->so_pcb;
   INP_RLOCK(pcb);
   ar->k_ar.ar_arg_sockinfo.so_raddr =
       pcb->inp_faddr.s_addr;
   ar->k_ar.ar_arg_sockinfo.so_laddr =
       pcb->inp_laddr.s_addr;
   ar->k_ar.ar_arg_sockinfo.so_rport =
       pcb->inp_fport;
   ar->k_ar.ar_arg_sockinfo.so_lport =
       pcb->inp_lport;
   INP_RUNLOCK(pcb);
   ARG_SET_VALID(ar, ARG_SOCKINFO);
  }
  break;

 default:

  break;
 }
}
