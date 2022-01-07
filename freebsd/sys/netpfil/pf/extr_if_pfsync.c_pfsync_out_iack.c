
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pfsync_ins_ack {int creatorid; int id; } ;
struct pf_state {int creatorid; int id; } ;



__attribute__((used)) static void
pfsync_out_iack(struct pf_state *st, void *buf)
{
 struct pfsync_ins_ack *iack = buf;

 iack->id = st->id;
 iack->creatorid = st->creatorid;
}
