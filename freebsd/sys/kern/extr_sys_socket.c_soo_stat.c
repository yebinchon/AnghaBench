
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct ucred {int dummy; } ;
struct thread {int dummy; } ;
struct stat {int st_mode; int st_gid; int st_uid; scalar_t__ st_size; } ;
struct sockbuf {int sb_state; scalar_t__ sb_ctl; } ;
struct socket {TYPE_3__* so_proto; TYPE_1__* so_cred; struct sockbuf so_snd; struct sockbuf so_rcv; } ;
struct file {struct socket* f_data; } ;
typedef int caddr_t ;
struct TYPE_6__ {TYPE_2__* pr_usrreqs; } ;
struct TYPE_5__ {int (* pru_sense ) (struct socket*,struct stat*) ;} ;
struct TYPE_4__ {int cr_gid; int cr_uid; } ;


 int SBS_CANTRCVMORE ;
 int SBS_CANTSENDMORE ;
 int SOCKBUF_LOCK (struct sockbuf*) ;
 int SOCKBUF_UNLOCK (struct sockbuf*) ;
 int SOLISTENING (struct socket*) ;
 int S_IFSOCK ;
 int S_IRGRP ;
 int S_IROTH ;
 int S_IRUSR ;
 int S_IWGRP ;
 int S_IWOTH ;
 int S_IWUSR ;
 int bzero (int ,int) ;
 int mac_socket_check_stat (struct ucred*,struct socket*) ;
 scalar_t__ sbavail (struct sockbuf*) ;
 int stub1 (struct socket*,struct stat*) ;

__attribute__((used)) static int
soo_stat(struct file *fp, struct stat *ub, struct ucred *active_cred,
    struct thread *td)
{
 struct socket *so = fp->f_data;




 bzero((caddr_t)ub, sizeof (*ub));
 ub->st_mode = S_IFSOCK;





 if (!SOLISTENING(so)) {
  struct sockbuf *sb;





  sb = &so->so_rcv;
  SOCKBUF_LOCK(sb);
  if ((sb->sb_state & SBS_CANTRCVMORE) == 0 || sbavail(sb))
   ub->st_mode |= S_IRUSR | S_IRGRP | S_IROTH;
  ub->st_size = sbavail(sb) - sb->sb_ctl;
  SOCKBUF_UNLOCK(sb);

  sb = &so->so_snd;
  SOCKBUF_LOCK(sb);
  if ((sb->sb_state & SBS_CANTSENDMORE) == 0)
   ub->st_mode |= S_IWUSR | S_IWGRP | S_IWOTH;
  SOCKBUF_UNLOCK(sb);
 }
 ub->st_uid = so->so_cred->cr_uid;
 ub->st_gid = so->so_cred->cr_gid;
 return (*so->so_proto->pr_usrreqs->pru_sense)(so, ub);
}
