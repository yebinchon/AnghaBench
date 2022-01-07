
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENFILE ;
 int MA_OWNED ;
 int PVFS ;
 scalar_t__ desiredvnodes ;
 int freevnodes ;
 int hz ;
 int msleep (int*,int *,int ,char*,int ) ;
 int mtx_assert (int *,int ) ;
 scalar_t__ numvnodes ;
 int vnlru_free_locked (int,int *) ;
 int vnlruproc ;
 int vnlruproc_sig ;
 int vnode_free_list_mtx ;
 int wakeup (int ) ;

__attribute__((used)) static int
getnewvnode_wait(int suspended)
{

 mtx_assert(&vnode_free_list_mtx, MA_OWNED);
 if (numvnodes >= desiredvnodes) {
  if (suspended) {





   return (0);
  }
  if (vnlruproc_sig == 0) {
   vnlruproc_sig = 1;
   wakeup(vnlruproc);
  }
  msleep(&vnlruproc_sig, &vnode_free_list_mtx, PVFS,
      "vlruwk", hz);
 }

 if (numvnodes + 1 > desiredvnodes && freevnodes > 1)
  vnlru_free_locked(1, ((void*)0));
 return (numvnodes >= desiredvnodes ? ENFILE : 0);
}
