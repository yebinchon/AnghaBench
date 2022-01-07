
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfsrvcache {int rc_flag; } ;
typedef int caddr_t ;


 int RC_WANTED ;
 int wakeup (int ) ;

__attribute__((used)) static void
nfsrc_wanted(struct nfsrvcache *rp)
{
 if (rp->rc_flag & RC_WANTED) {
  rp->rc_flag &= ~RC_WANTED;
  wakeup((caddr_t)rp);
 }
}
