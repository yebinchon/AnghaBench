
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbuf {int dummy; } ;
struct ccnode {int dump; int * dump_last; struct mbuf* dump_first; int data; } ;
typedef int node_p ;


 int MCLBYTES ;
 struct ccnode* NG_NODE_PRIVATE (int ) ;
 int NG_SEND_DATA_ONLY (int,int ,struct mbuf*) ;
 int cc_dump (int ,int ,int ,struct ccnode*) ;
 int send_dump ;

__attribute__((used)) static int
ng_ccatm_dump(node_p node)
{
 struct ccnode *priv = NG_NODE_PRIVATE(node);
 struct mbuf *m;
 int error;

 priv->dump_first = priv->dump_last = ((void*)0);
 error = cc_dump(priv->data, MCLBYTES, send_dump, priv);
 if (error != 0)
  return (error);

 if ((m = priv->dump_first) != ((void*)0)) {
  priv->dump_first = priv->dump_last = ((void*)0);
  NG_SEND_DATA_ONLY(error, priv->dump, m);
  return (error);
 }
 return (0);
}
