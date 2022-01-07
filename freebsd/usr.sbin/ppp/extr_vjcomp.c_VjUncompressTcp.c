
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_char ;
struct mbuf {int dummy; } ;
struct TYPE_2__ {int slstat; int cslc; } ;
struct ipcp {int my_compproto; TYPE_1__ vj; } ;


 int MAX_HDR ;
 int MAX_VJHEADER ;
 int * MBUF_CTOP (struct mbuf*) ;
 int MB_VJIN ;
 int TYPE_UNCOMPRESSED_TCP ;
 int m_freem (struct mbuf*) ;
 int m_length (struct mbuf*) ;
 struct mbuf* m_prepend (struct mbuf*,int *,int,int ) ;
 struct mbuf* m_pullup (struct mbuf*) ;
 int m_settype (struct mbuf*,int ) ;
 struct mbuf* mbuf_Read (struct mbuf*,int *,int) ;
 int sl_uncompress_tcp (int **,int,int ,int *,int *,int) ;

__attribute__((used)) static struct mbuf *
VjUncompressTcp(struct ipcp *ipcp, struct mbuf *bp, u_char type)
{
  u_char *bufp;
  int len, olen, rlen;
  u_char work[MAX_HDR + MAX_VJHEADER];

  bp = m_pullup(bp);
  olen = len = m_length(bp);
  if (type == TYPE_UNCOMPRESSED_TCP) {




    bufp = MBUF_CTOP(bp);
    len = sl_uncompress_tcp(&bufp, len, type, &ipcp->vj.cslc, &ipcp->vj.slstat,
                            (ipcp->my_compproto >> 8) & 255);
    if (len <= 0) {
      m_freem(bp);
      bp = ((void*)0);
    } else
      m_settype(bp, MB_VJIN);
    return bp;
  }






  if (len > MAX_VJHEADER)
    len = MAX_VJHEADER;
  rlen = len;
  bufp = work + MAX_HDR;
  bp = mbuf_Read(bp, bufp, rlen);
  len = sl_uncompress_tcp(&bufp, olen, type, &ipcp->vj.cslc, &ipcp->vj.slstat,
                          (ipcp->my_compproto >> 8) & 255);
  if (len <= 0) {
    m_freem(bp);
    return ((void*)0);
  }
  len -= olen;
  len += rlen;

  bp = m_prepend(bp, bufp, len, 0);
  m_settype(bp, MB_VJIN);

  return bp;
}
