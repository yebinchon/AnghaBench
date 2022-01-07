
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_char ;
typedef TYPE_1__* priv_p ;
typedef int node_p ;
struct TYPE_3__ {size_t Hash; int * GuessTable; } ;


 int HASH (int ) ;
 TYPE_1__* NG_NODE_PRIVATE (int ) ;

__attribute__((used)) static void
Pred1SyncTable(node_p node, u_char *source, int len)
{
 const priv_p priv = NG_NODE_PRIVATE(node);

 while (len--) {
  priv->GuessTable[priv->Hash] = *source;
  HASH(*source++);
 }
}
