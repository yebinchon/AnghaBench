
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* priv_p ;
struct TYPE_3__ {int flowsets_count; int * v9_flowsets; } ;


 int M_NETFLOW_GENERAL ;
 int free (int ,int ) ;

void
ng_netflow_v9_cache_flush(priv_p priv)
{
 int i;


 for (i = 0; i < priv->flowsets_count; i++)
  free(priv->v9_flowsets[i], M_NETFLOW_GENERAL);
}
