
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct thread {int dummy; } ;
struct socket {int dummy; } ;
struct sockaddr {int dummy; } ;
struct sa_tag {scalar_t__ id; struct sockaddr sa; } ;
struct mbuf {int m_flags; } ;
typedef TYPE_1__* priv_p ;
typedef int node_p ;
typedef int item_p ;
typedef int hook_p ;
struct TYPE_3__ {struct socket* so; } ;


 int ALIGNED_POINTER (int ,int ) ;
 int ENOBUFS ;
 int M_BCAST ;
 int M_MCAST ;
 int M_NOWAIT ;
 int NGI_GET_M (int ,struct mbuf*) ;
 int NGM_KSOCKET_COOKIE ;
 int NG_FREE_ITEM (int ) ;
 int NG_HOOK_NODE (int ) ;
 int NG_KSOCKET_TAG_SOCKADDR ;
 scalar_t__ NG_NODE_ID (int const) ;
 TYPE_1__* NG_NODE_PRIVATE (int const) ;
 int caddr_t ;
 struct thread* curthread ;
 struct mbuf* m_defrag (struct mbuf*,int ) ;
 int m_freem (struct mbuf*) ;
 scalar_t__ m_tag_locate (struct mbuf*,int ,int ,int *) ;
 int mtod (struct mbuf*,int ) ;
 int sosend (struct socket* const,struct sockaddr*,int ,struct mbuf*,int ,int ,struct thread*) ;
 int uint32_t ;

__attribute__((used)) static int
ng_ksocket_rcvdata(hook_p hook, item_p item)
{
 struct thread *td = curthread;
 const node_p node = NG_HOOK_NODE(hook);
 const priv_p priv = NG_NODE_PRIVATE(node);
 struct socket *const so = priv->so;
 struct sockaddr *sa = ((void*)0);
 int error;
 struct mbuf *m;



 struct sa_tag *stag;


 NGI_GET_M(item, m);
 NG_FREE_ITEM(item);
 if (((stag = (struct sa_tag *)m_tag_locate(m, NGM_KSOCKET_COOKIE,
     NG_KSOCKET_TAG_SOCKADDR, ((void*)0))) != ((void*)0)) &&
     (stag->id == NG_NODE_ID(node) || stag->id == 0))
  sa = &stag->sa;


 m->m_flags &= ~(M_BCAST|M_MCAST);


 error = sosend(so, sa, 0, m, 0, 0, td);

 return (error);
}
