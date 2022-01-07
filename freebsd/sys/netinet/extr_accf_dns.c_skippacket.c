
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sockbuf {TYPE_1__* sb_mb; } ;
struct packet {int len; scalar_t__ offset; scalar_t__ moff; TYPE_1__* m; int n; } ;
struct TYPE_2__ {int m_nextpkt; } ;


 int DNS_OK ;
 int DNS_WAIT ;
 int GET16 (struct packet*,unsigned long) ;
 int sbavail (struct sockbuf*) ;

__attribute__((used)) static int
skippacket(struct sockbuf *sb) {
 unsigned long packlen;
 struct packet q, *p = &q;

 if (sbavail(sb) < 2)
  return DNS_WAIT;

 q.m = sb->sb_mb;
 q.n = q.m->m_nextpkt;
 q.moff = 0;
 q.offset = 0;
 q.len = sbavail(sb);

 GET16(p, packlen);
 if (packlen + 2 > q.len)
  return DNS_WAIT;

 return DNS_OK;
}
