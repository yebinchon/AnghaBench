
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct lockf_entry {scalar_t__ lf_start; scalar_t__ lf_end; TYPE_1__* lf_owner; int lf_type; } ;
struct lockf {int dummy; } ;
struct flock {scalar_t__ l_start; scalar_t__ l_len; int l_type; int l_sysid; int l_pid; int l_whence; } ;
struct TYPE_2__ {int lo_sysid; int lo_pid; } ;


 int F_UNLCK ;
 scalar_t__ OFF_MAX ;
 int SEEK_SET ;
 struct lockf_entry* lf_getblock (struct lockf*,struct lockf_entry*) ;
 int lf_print (char*,struct lockf_entry*) ;
 int lockf_debug ;

__attribute__((used)) static int
lf_getlock(struct lockf *state, struct lockf_entry *lock, struct flock *fl)
{
 struct lockf_entry *block;






 if ((block = lf_getblock(state, lock))) {
  fl->l_type = block->lf_type;
  fl->l_whence = SEEK_SET;
  fl->l_start = block->lf_start;
  if (block->lf_end == OFF_MAX)
   fl->l_len = 0;
  else
   fl->l_len = block->lf_end - block->lf_start + 1;
  fl->l_pid = block->lf_owner->lo_pid;
  fl->l_sysid = block->lf_owner->lo_sysid;
 } else {
  fl->l_type = F_UNLCK;
 }
 return (0);
}
