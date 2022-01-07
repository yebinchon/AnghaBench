
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfsrvcache {int rc_flag; } ;
struct mtx {int dummy; } ;


 int MA_OWNED ;
 scalar_t__ PZERO ;
 int RC_LOCKED ;
 int RC_WANTED ;
 int mtx_assert (struct mtx*,int ) ;
 int mtx_sleep (struct nfsrvcache*,struct mtx*,scalar_t__,char*,int ) ;
 struct mtx* nfsrc_cachemutex (struct nfsrvcache*) ;

__attribute__((used)) static void
nfsrc_lock(struct nfsrvcache *rp)
{
 struct mtx *mutex;

 mutex = nfsrc_cachemutex(rp);
 mtx_assert(mutex, MA_OWNED);
 while ((rp->rc_flag & RC_LOCKED) != 0) {
  rp->rc_flag |= RC_WANTED;
  (void)mtx_sleep(rp, mutex, PZERO - 1, "nfsrc", 0);
 }
 rp->rc_flag |= RC_LOCKED;
}
