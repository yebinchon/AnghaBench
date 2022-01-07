
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ng_nat_rdr_lst {int lib; int redirhead; } ;
typedef struct ng_nat_rdr_lst* priv_p ;
typedef int node_p ;


 int LibAliasUninit (int ) ;
 int M_NETGRAPH ;
 struct ng_nat_rdr_lst* NG_NODE_PRIVATE (int ) ;
 int NG_NODE_SET_PRIVATE (int ,int *) ;
 int NG_NODE_UNREF (int ) ;
 int STAILQ_EMPTY (int *) ;
 struct ng_nat_rdr_lst* STAILQ_FIRST (int *) ;
 int STAILQ_REMOVE_HEAD (int *,int ) ;
 int entries ;
 int free (struct ng_nat_rdr_lst* const,int ) ;

__attribute__((used)) static int
ng_nat_shutdown(node_p node)
{
 const priv_p priv = NG_NODE_PRIVATE(node);

 NG_NODE_SET_PRIVATE(node, ((void*)0));
 NG_NODE_UNREF(node);


 while (!STAILQ_EMPTY(&priv->redirhead)) {
  struct ng_nat_rdr_lst *entry = STAILQ_FIRST(&priv->redirhead);
  STAILQ_REMOVE_HEAD(&priv->redirhead, entries);
  free(entry, M_NETGRAPH);
 }


 LibAliasUninit(priv->lib);
 free(priv, M_NETGRAPH);

 return (0);
}
