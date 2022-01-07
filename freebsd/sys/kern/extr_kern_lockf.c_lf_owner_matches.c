
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lock_owner {scalar_t__ lo_pid; scalar_t__ lo_sysid; scalar_t__ lo_id; } ;
struct flock {scalar_t__ l_pid; scalar_t__ l_sysid; } ;
typedef scalar_t__ caddr_t ;


 int F_REMOTE ;

__attribute__((used)) static int
lf_owner_matches(struct lock_owner *lo, caddr_t id, struct flock *fl,
    int flags)
{
 if (flags & F_REMOTE) {
  return lo->lo_pid == fl->l_pid
   && lo->lo_sysid == fl->l_sysid;
 } else {
  return lo->lo_id == id;
 }
}
