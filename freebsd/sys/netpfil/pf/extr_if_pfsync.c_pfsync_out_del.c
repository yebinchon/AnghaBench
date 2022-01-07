
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pfsync_del_c {int creatorid; int id; } ;
struct pf_state {int state_flags; int creatorid; int id; } ;


 int PFSTATE_NOSYNC ;

__attribute__((used)) static void
pfsync_out_del(struct pf_state *st, void *buf)
{
 struct pfsync_del_c *dp = buf;

 dp->id = st->id;
 dp->creatorid = st->creatorid;
 st->state_flags |= PFSTATE_NOSYNC;
}
