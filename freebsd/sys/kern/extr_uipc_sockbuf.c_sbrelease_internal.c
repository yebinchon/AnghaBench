
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct socket {TYPE_1__* so_cred; } ;
struct sockbuf {scalar_t__ sb_mbmax; int sb_hiwat; } ;
struct TYPE_2__ {int cr_uidinfo; } ;


 int RLIM_INFINITY ;
 int chgsbsize (int ,int *,int ,int ) ;
 int sbflush_internal (struct sockbuf*) ;

void
sbrelease_internal(struct sockbuf *sb, struct socket *so)
{

 sbflush_internal(sb);
 (void)chgsbsize(so->so_cred->cr_uidinfo, &sb->sb_hiwat, 0,
     RLIM_INFINITY);
 sb->sb_mbmax = 0;
}
