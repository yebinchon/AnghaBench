
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint16_t ;
typedef int u_char ;
struct TYPE_5__ {int len; } ;
struct mbuf {TYPE_1__ m_pkthdr; } ;
typedef TYPE_3__* priv_p ;
typedef int node_p ;
typedef int caddr_t ;
struct TYPE_6__ {int InOctets; int OutOctets; int FramesPlain; int Errors; int FramesUncomp; int FramesComp; } ;
struct TYPE_7__ {int* inbuf; int* outbuf; TYPE_2__ stats; } ;


 int Crc16 (int,int*,int) ;
 int EIO ;
 int ENOMEM ;
 int LOG_NOTICE ;
 int M_NOWAIT ;
 int NG_FREE_M (struct mbuf*) ;
 TYPE_3__* NG_NODE_PRIVATE (int ) ;
 int PPP_GOODFCS ;
 int PPP_INITFCS ;
 int PRED1_BUF_SIZE ;
 int Pred1Decompress (int ,int*,int*,int,int) ;
 int Pred1SyncTable (int ,int*,int) ;
 int htons (int) ;
 int log (int ,char*,...) ;
 int m_adj (struct mbuf*,int) ;
 int m_copyback (struct mbuf*,int ,int,int ) ;
 int m_copydata (struct mbuf*,int ,int,int ) ;
 int m_freem (struct mbuf*) ;
 struct mbuf* m_unshare (struct mbuf*,int ) ;

__attribute__((used)) static int
ng_pred1_decompress(node_p node, struct mbuf *m, struct mbuf **resultp)
{
 const priv_p priv = NG_NODE_PRIVATE(node);
 int inlen;
 uint16_t len, len1, cf, lenn;
 uint16_t fcs;


 *resultp = ((void*)0);

 inlen = m->m_pkthdr.len;

 if (inlen > PRED1_BUF_SIZE) {
  priv->stats.Errors++;
  NG_FREE_M(m);
  return (ENOMEM);
 }


 m = m_unshare(m, M_NOWAIT);
 if (m == ((void*)0)) {
  priv->stats.Errors++;
  return (ENOMEM);
 }


 m_copydata(m, 0, inlen, (caddr_t)priv->inbuf);

 priv->stats.InOctets += inlen;


 len = priv->inbuf[0] << 8;
 len += priv->inbuf[1];

 cf = (len & 0x8000);
 len &= 0x7fff;


 if (cf) {
  priv->stats.FramesComp++;
  len1 = Pred1Decompress(node, priv->inbuf + 2, priv->outbuf,
      inlen - 4, PRED1_BUF_SIZE);
  if (len != len1) {

   m_freem(m);
   priv->stats.Errors++;
   log(LOG_NOTICE, "ng_pred1: Comp length error (%d) "
       "--> len (%d)\n", len, len1);
   return (EIO);
  }







  lenn = htons(len);
  fcs = Crc16(PPP_INITFCS, (u_char *)&lenn, 2);
  fcs = Crc16(fcs, priv->outbuf, len);
  fcs = Crc16(fcs, priv->inbuf + inlen - 2, 2);

  if (fcs != PPP_GOODFCS) {
   m_freem(m);
   priv->stats.Errors++;
       log(LOG_NOTICE, "ng_pred1: Pred1: Bad CRC-16\n");
   return (EIO);
  }


  m_copyback(m, 0, len, (caddr_t)priv->outbuf);
  if (m->m_pkthdr.len < len) {
   m_freem(m);
   priv->stats.Errors++;
   return (ENOMEM);
  } else if (len < m->m_pkthdr.len)
   m_adj(m, len - m->m_pkthdr.len);
  *resultp = m;

 } else {
  priv->stats.FramesUncomp++;
  if (len != (inlen - 4)) {

   priv->stats.Errors++;
   log(LOG_NOTICE, "ng_pred1: Uncomp length error (%d) "
       "--> len (%d)\n", len, inlen - 4);
   NG_FREE_M(m);
   return (EIO);
  }
  Pred1SyncTable(node, priv->inbuf + 2, len);
  m_adj(m, 2);
  m_adj(m, -2);
  *resultp = m;
 }

 priv->stats.FramesPlain++;
 priv->stats.OutOctets += len;

 return (0);
}
