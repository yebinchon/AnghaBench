
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_long ;
struct thread {int dummy; } ;
struct socket {TYPE_1__* so_cred; } ;
struct sockbuf {scalar_t__ sb_hiwat; scalar_t__ sb_lowat; int sb_mbmax; } ;
typedef int rlim_t ;
struct TYPE_2__ {int cr_uidinfo; } ;


 int RLIMIT_SBSIZE ;
 int RLIM_INFINITY ;
 int SOCKBUF_LOCK_ASSERT (struct sockbuf*) ;
 int chgsbsize (int ,scalar_t__*,int,int ) ;
 int lim_cur (struct thread*,int ) ;
 int min (int,int ) ;
 int sb_efficiency ;
 int sb_max ;
 int sb_max_adj ;

int
sbreserve_locked(struct sockbuf *sb, u_long cc, struct socket *so,
    struct thread *td)
{
 rlim_t sbsize_limit;

 SOCKBUF_LOCK_ASSERT(sb);
 if (cc > sb_max_adj)
  return (0);
 if (td != ((void*)0)) {
  sbsize_limit = lim_cur(td, RLIMIT_SBSIZE);
 } else
  sbsize_limit = RLIM_INFINITY;
 if (!chgsbsize(so->so_cred->cr_uidinfo, &sb->sb_hiwat, cc,
     sbsize_limit))
  return (0);
 sb->sb_mbmax = min(cc * sb_efficiency, sb_max);
 if (sb->sb_lowat > sb->sb_hiwat)
  sb->sb_lowat = sb->sb_hiwat;
 return (1);
}
