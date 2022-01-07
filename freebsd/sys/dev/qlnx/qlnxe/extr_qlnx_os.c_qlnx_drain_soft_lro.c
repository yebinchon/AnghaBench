
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct qlnx_fastpath {TYPE_1__* rxq; } ;
struct lro_entry {int dummy; } ;
struct lro_ctrl {int lro_active; } ;
struct ifnet {int if_capenable; } ;
struct TYPE_5__ {int num_rss; struct qlnx_fastpath* fp_array; struct ifnet* ifp; } ;
typedef TYPE_2__ qlnx_host_t ;
struct TYPE_4__ {struct lro_ctrl lro; } ;


 int IFCAP_LRO ;
 int SLIST_EMPTY (int *) ;
 struct lro_entry* SLIST_FIRST (int *) ;
 int SLIST_REMOVE_HEAD (int *,int ) ;
 int next ;
 int tcp_lro_flush (struct lro_ctrl*,struct lro_entry*) ;
 int tcp_lro_flush_all (struct lro_ctrl*) ;

__attribute__((used)) static void
qlnx_drain_soft_lro(qlnx_host_t *ha)
{
 return;
}
