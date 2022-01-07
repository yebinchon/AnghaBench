
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pfsync_upd_c {int timeout; int creatorid; int dst; int src; int id; } ;
struct pf_state {int timeout; int creatorid; int dst; int src; int id; } ;


 int bzero (struct pfsync_upd_c*,int) ;
 int pf_state_peer_hton (int *,int *) ;

__attribute__((used)) static void
pfsync_out_upd_c(struct pf_state *st, void *buf)
{
 struct pfsync_upd_c *up = buf;

 bzero(up, sizeof(*up));
 up->id = st->id;
 pf_state_peer_hton(&st->src, &up->src);
 pf_state_peer_hton(&st->dst, &up->dst);
 up->creatorid = st->creatorid;
 up->timeout = st->timeout;
}
