
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sockbuf {int sb_flags; } ;
struct knlist {int dummy; } ;
struct TYPE_6__ {struct knlist si_note; } ;
struct TYPE_5__ {struct knlist si_note; } ;
struct socket {struct sockbuf so_snd; TYPE_3__ so_wrsel; struct sockbuf so_rcv; TYPE_2__ so_rdsel; } ;
struct knote {int kn_filter; int * kn_fop; TYPE_1__* kn_fp; } ;
struct file {int dummy; } ;
struct TYPE_4__ {struct socket* f_data; } ;


 int EINVAL ;



 int SB_KNOTE ;
 int SOCKBUF_LOCK (struct sockbuf*) ;
 int SOCKBUF_UNLOCK (struct sockbuf*) ;
 int SOCK_LOCK (struct socket*) ;
 int SOCK_UNLOCK (struct socket*) ;
 scalar_t__ SOLISTENING (struct socket*) ;
 int knlist_add (struct knlist*,struct knote*,int) ;
 int soempty_filtops ;
 int soread_filtops ;
 int sowrite_filtops ;

int
soo_kqfilter(struct file *fp, struct knote *kn)
{
 struct socket *so = kn->kn_fp->f_data;
 struct sockbuf *sb;
 struct knlist *knl;

 switch (kn->kn_filter) {
 case 129:
  kn->kn_fop = &soread_filtops;
  knl = &so->so_rdsel.si_note;
  sb = &so->so_rcv;
  break;
 case 128:
  kn->kn_fop = &sowrite_filtops;
  knl = &so->so_wrsel.si_note;
  sb = &so->so_snd;
  break;
 case 130:
  kn->kn_fop = &soempty_filtops;
  knl = &so->so_wrsel.si_note;
  sb = &so->so_snd;
  break;
 default:
  return (EINVAL);
 }

 SOCK_LOCK(so);
 if (SOLISTENING(so)) {
  knlist_add(knl, kn, 1);
 } else {
  SOCKBUF_LOCK(sb);
  knlist_add(knl, kn, 1);
  sb->sb_flags |= SB_KNOTE;
  SOCKBUF_UNLOCK(sb);
 }
 SOCK_UNLOCK(so);
 return (0);
}
