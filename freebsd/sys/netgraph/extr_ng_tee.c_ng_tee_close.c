
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_3__* sc_p ;
typedef int node_p ;
struct TYPE_6__ {scalar_t__ hook; } ;
struct TYPE_5__ {scalar_t__ hook; } ;
struct TYPE_7__ {TYPE_2__ right; TYPE_1__ left; } ;


 TYPE_3__* NG_NODE_PRIVATE (int ) ;
 int ng_bypass (scalar_t__,scalar_t__) ;

__attribute__((used)) static int
ng_tee_close(node_p node)
{
 const sc_p privdata = NG_NODE_PRIVATE(node);

 if (privdata->left.hook && privdata->right.hook)
  ng_bypass(privdata->left.hook, privdata->right.hook);

 return (0);
}
