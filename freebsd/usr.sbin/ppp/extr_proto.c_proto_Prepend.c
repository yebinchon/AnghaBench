
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_short ;
typedef int u_char ;
struct mbuf {int dummy; } ;


 struct mbuf* m_prepend (struct mbuf*,int*,int,int) ;

struct mbuf *
proto_Prepend(struct mbuf *bp, u_short proto, unsigned comp, int extra)
{
  u_char cp[2];

  cp[0] = proto >> 8;
  cp[1] = proto & 0xff;

  if (comp && cp[0] == 0)
    bp = m_prepend(bp, cp + 1, 1, extra);
  else
    bp = m_prepend(bp, cp, 2, extra);

  return bp;
}
