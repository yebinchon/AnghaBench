
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int len; } ;
struct mbuf {TYPE_1__ m_pkthdr; } ;
typedef TYPE_3__* priv_p ;
typedef int node_p ;
typedef int caddr_t ;
struct TYPE_9__ {scalar_t__* next_in; int avail_in; int* next_out; int avail_out; int msg; } ;
struct TYPE_7__ {int InOctets; int OutOctets; int FramesComp; int Errors; int FramesUncomp; int FramesPlain; } ;
struct TYPE_8__ {scalar_t__* inbuf; int* outbuf; int seqnum; TYPE_2__ stats; TYPE_4__ cx; } ;


 int DEFLATE_BUF_SIZE ;
 int DEFLATE_HDRLEN ;
 int EINVAL ;
 int ENOMEM ;
 int LOG_NOTICE ;
 int MPASS (int) ;
 int M_NOWAIT ;
 int NG_FREE_M (struct mbuf*) ;
 TYPE_3__* NG_NODE_PRIVATE (int ) ;
 int PROT_COMPD ;
 int Z_OK ;
 int Z_SYNC_FLUSH ;
 int be16enc (int*,int ) ;
 int deflate (TYPE_4__*,int ) ;
 int log (int ,char*,int,int ) ;
 int m_adj (struct mbuf*,int) ;
 int m_copyback (struct mbuf*,int ,int,int ) ;
 int m_copydata (struct mbuf*,int ,int,int ) ;
 int m_freem (struct mbuf*) ;
 struct mbuf* m_unshare (struct mbuf*,int ) ;

__attribute__((used)) static int
ng_deflate_compress(node_p node, struct mbuf *m, struct mbuf **resultp)
{
 const priv_p priv = NG_NODE_PRIVATE(node);
 int outlen, inlen;
 int rtn;


 *resultp = ((void*)0);

 inlen = m->m_pkthdr.len;

 priv->stats.FramesPlain++;
 priv->stats.InOctets+=inlen;

 if (inlen > DEFLATE_BUF_SIZE) {
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
 outlen = DEFLATE_BUF_SIZE;



 if (priv->inbuf[0] != 0) {
  priv->cx.next_in = priv->inbuf;
  priv->cx.avail_in = inlen;
 } else {
  priv->cx.next_in = priv->inbuf + 1;
  priv->cx.avail_in = inlen - 1;
 }
 priv->cx.next_out = priv->outbuf + 2 + DEFLATE_HDRLEN;
 priv->cx.avail_out = outlen - 2 - DEFLATE_HDRLEN;


 rtn = deflate(&priv->cx, Z_SYNC_FLUSH);


 if (rtn != Z_OK) {
  priv->stats.Errors++;
  log(LOG_NOTICE, "ng_deflate: compression error: %d (%s)\n",
      rtn, priv->cx.msg);
  NG_FREE_M(m);
  return (EINVAL);
 }


 outlen -= priv->cx.avail_out;







 outlen -= 4;
 MPASS(outlen > 0);
 MPASS(priv->outbuf[outlen + 0] == 0x00);
 MPASS(priv->outbuf[outlen + 1] == 0x00);
 MPASS(priv->outbuf[outlen + 2] == 0xff);
 MPASS(priv->outbuf[outlen + 3] == 0xff);


 if (outlen > inlen) {

  *resultp = m;
  priv->stats.FramesUncomp++;
  priv->stats.OutOctets+=inlen;
 } else {

  be16enc(priv->outbuf, PROT_COMPD);
  be16enc(priv->outbuf + 2, priv->seqnum);


  m_copyback(m, 0, outlen, (caddr_t)priv->outbuf);
  if (m->m_pkthdr.len < outlen) {
   m_freem(m);
   priv->stats.Errors++;
   return (ENOMEM);
  } else if (outlen < m->m_pkthdr.len)
   m_adj(m, outlen - m->m_pkthdr.len);
  *resultp = m;
  priv->stats.FramesComp++;
  priv->stats.OutOctets+=outlen;
 }


 priv->seqnum++;

 return (0);
}
