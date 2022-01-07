
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct vnode {int dummy; } ;
struct flock {int l_sysid; int l_pid; } ;
typedef scalar_t__ caddr_t ;


 int F_FLOCK ;
 int F_REMOTE ;
 int HASHSTEP (int,int ) ;
 int LOCK_OWNER_HASH_SIZE ;

__attribute__((used)) static int
lf_hash_owner(caddr_t id, struct vnode *vp, struct flock *fl, int flags)
{
 uint32_t h;

 if (flags & F_REMOTE) {
  h = HASHSTEP(0, fl->l_pid);
  h = HASHSTEP(h, fl->l_sysid);
 } else if (flags & F_FLOCK) {
  h = ((uintptr_t) id) >> 7;
 } else {
  h = ((uintptr_t) vp) >> 7;
 }

 return (h % LOCK_OWNER_HASH_SIZE);
}
