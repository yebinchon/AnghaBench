
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int so_rcv; } ;
struct sockaddr_ng {int sg_len; char* sg_data; int sg_family; } ;
struct sockaddr {int dummy; } ;
struct ngsock {struct ngpcb* datasock; } ;
struct ngpcb {struct socket* ng_socket; } ;
struct mbuf {int dummy; } ;
typedef int item_p ;
typedef int hook_p ;


 int AF_NETGRAPH ;
 int ENOBUFS ;
 int NGI_GET_M (int ,struct mbuf*) ;
 int NG_FREE_ITEM (int ) ;
 int NG_FREE_M (struct mbuf*) ;
 int NG_HOOKSIZ ;
 int NG_HOOK_NAME (int ) ;
 int NG_HOOK_NODE (int ) ;
 struct ngsock* NG_NODE_PRIVATE (int ) ;
 int TRAP_ERROR ;
 int bcopy (int ,char*,int) ;
 int m_freem (struct mbuf*) ;
 scalar_t__ sbappendaddr (int *,struct sockaddr*,struct mbuf*,int *) ;
 int sorwakeup (struct socket*) ;
 int strlen (int ) ;

__attribute__((used)) static int
ngs_rcvdata(hook_p hook, item_p item)
{
 struct ngsock *const priv = NG_NODE_PRIVATE(NG_HOOK_NODE(hook));
 struct ngpcb *const pcbp = priv->datasock;
 struct socket *so;
 struct sockaddr_ng *addr;
 char *addrbuf[NG_HOOKSIZ + 4];
 int addrlen;
 struct mbuf *m;

 NGI_GET_M(item, m);
 NG_FREE_ITEM(item);


 if (pcbp == ((void*)0)) {
  NG_FREE_M(m);
  return (0);
 }
 so = pcbp->ng_socket;


 addrlen = strlen(NG_HOOK_NAME(hook));
 addr = (struct sockaddr_ng *) addrbuf;
 addr->sg_len = addrlen + 3;
 addr->sg_family = AF_NETGRAPH;
 bcopy(NG_HOOK_NAME(hook), addr->sg_data, addrlen);
 addr->sg_data[addrlen] = '\0';


 if (sbappendaddr(&so->so_rcv, (struct sockaddr *)addr, m, ((void*)0)) == 0) {
  m_freem(m);
  TRAP_ERROR;
  return (ENOBUFS);
 }
 sorwakeup(so);
 return (0);
}
