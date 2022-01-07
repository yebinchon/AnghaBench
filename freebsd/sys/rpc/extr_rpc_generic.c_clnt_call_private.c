
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int (* xdrproc_t ) (int *,void*) ;
struct timeval {int dummy; } ;
struct rpc_callextra {int dummy; } ;
struct mbuf {int dummy; } ;
typedef int rpcproc_t ;
typedef enum clnt_stat { ____Placeholder_clnt_stat } clnt_stat ;
typedef int XDR ;
typedef int CLIENT ;


 int CLNT_CALL_MBUF (int *,struct rpc_callextra*,int ,struct mbuf*,struct mbuf**,struct timeval) ;
 int MT_DATA ;
 int M_WAITOK ;
 int RPC_CANTDECODERES ;
 int RPC_CANTENCODEARGS ;
 int RPC_SUCCESS ;
 int XDR_DECODE ;
 int XDR_DESTROY (int *) ;
 int XDR_ENCODE ;
 int m_freem (struct mbuf*) ;
 struct mbuf* m_getcl (int ,int ,int ) ;
 int xdrmbuf_create (int *,struct mbuf*,int ) ;

enum clnt_stat
clnt_call_private(
 CLIENT *cl,
 struct rpc_callextra *ext,
 rpcproc_t proc,
 xdrproc_t xargs,
 void *argsp,
 xdrproc_t xresults,
 void *resultsp,
 struct timeval utimeout)
{
 XDR xdrs;
 struct mbuf *mreq;
 struct mbuf *mrep;
 enum clnt_stat stat;

 mreq = m_getcl(M_WAITOK, MT_DATA, 0);

 xdrmbuf_create(&xdrs, mreq, XDR_ENCODE);
 if (!xargs(&xdrs, argsp)) {
  m_freem(mreq);
  return (RPC_CANTENCODEARGS);
 }
 XDR_DESTROY(&xdrs);

 stat = CLNT_CALL_MBUF(cl, ext, proc, mreq, &mrep, utimeout);
 m_freem(mreq);

 if (stat == RPC_SUCCESS) {
  xdrmbuf_create(&xdrs, mrep, XDR_DECODE);
  if (!xresults(&xdrs, resultsp)) {
   XDR_DESTROY(&xdrs);
   return (RPC_CANTDECODERES);
  }
  XDR_DESTROY(&xdrs);
 }

 return (stat);
}
