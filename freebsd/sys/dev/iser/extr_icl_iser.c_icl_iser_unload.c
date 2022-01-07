
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int device_list_mutex; int connlist_mutex; int close_conns_mutex; } ;


 int EBUSY ;
 int ISER_DBG (char*) ;
 scalar_t__ icl_iser_ncons ;
 int icl_pdu_zone ;
 int icl_unregister (char*,int) ;
 TYPE_1__ ig ;
 int mtx_destroy (int *) ;
 int sx_destroy (int *) ;
 int uma_zdestroy (int ) ;

__attribute__((used)) static int
icl_iser_unload(void)
{
 ISER_DBG("Removing iSER datamover...");

 if (icl_iser_ncons != 0)
  return (EBUSY);

 sx_destroy(&ig.close_conns_mutex);
 mtx_destroy(&ig.connlist_mutex);
 sx_destroy(&ig.device_list_mutex);

 icl_unregister("iser", 1);

 uma_zdestroy(icl_pdu_zone);

 return (0);
}
