
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* priv_p ;
typedef int node_p ;
struct TYPE_3__ {int GuessTable; scalar_t__ Hash; } ;


 TYPE_1__* NG_NODE_PRIVATE (int ) ;
 int PRED1_TABLE_SIZE ;
 int memset (int ,int ,int ) ;

__attribute__((used)) static void
Pred1Init(node_p node)
{
 const priv_p priv = NG_NODE_PRIVATE(node);

 priv->Hash = 0;
 memset(priv->GuessTable, 0, PRED1_TABLE_SIZE);
}
