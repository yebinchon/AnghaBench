
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct iser_global {int dummy; } ;
struct icl_iser_pdu {int dummy; } ;
struct TYPE_3__ {int close_conns_mutex; int connlist; int connlist_mutex; int device_list; int device_list_mutex; } ;


 int INIT_LIST_HEAD (int *) ;
 int ISER_DBG (char*) ;
 int KASSERT (int,char*) ;
 int MTX_DEF ;
 int UMA_ALIGN_PTR ;
 int icl_iser_ncons ;
 int icl_pdu_zone ;
 int icl_register (char*,int,int ,int ,int ) ;
 TYPE_1__ ig ;
 int iser_limits ;
 int iser_new_conn ;
 int memset (TYPE_1__*,int ,int) ;
 int mtx_init (int *,char*,int *,int ) ;
 int refcount_init (int *,int ) ;
 int sx_init (int *,char*) ;
 int uma_zcreate (char*,int,int *,int *,int *,int *,int ,int ) ;

__attribute__((used)) static int
icl_iser_load(void)
{
 int error;

 ISER_DBG("Starting iSER datamover...");

 icl_pdu_zone = uma_zcreate("icl_iser_pdu", sizeof(struct icl_iser_pdu),
       ((void*)0), ((void*)0), ((void*)0), ((void*)0),
       UMA_ALIGN_PTR, 0);


 refcount_init(&icl_iser_ncons, 0);

 error = icl_register("iser", 1, 0, iser_limits, iser_new_conn);
 KASSERT(error == 0, ("failed to register iser"));

 memset(&ig, 0, sizeof(struct iser_global));


 sx_init(&ig.device_list_mutex, "global_device_lock");
 INIT_LIST_HEAD(&ig.device_list);
 mtx_init(&ig.connlist_mutex, "iser_global_conn_lock", ((void*)0), MTX_DEF);
 INIT_LIST_HEAD(&ig.connlist);
 sx_init(&ig.close_conns_mutex, "global_close_conns_lock");

 return (error);
}
