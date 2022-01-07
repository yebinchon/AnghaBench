
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sglist {int dummy; } ;
struct hv_sgl_node {struct sglist* sgl_data; } ;
struct TYPE_2__ {int free_sgl_list; int in_use_sgl_list; } ;


 scalar_t__ LIST_EMPTY (int *) ;
 struct hv_sgl_node* LIST_FIRST (int *) ;
 int LIST_INSERT_HEAD (int *,struct hv_sgl_node*,int ) ;
 int LIST_REMOVE (struct hv_sgl_node*,int ) ;
 TYPE_1__ g_hv_sgl_page_pool ;
 int link ;
 int printf (char*) ;

__attribute__((used)) static void
storvsc_destroy_bounce_buffer(struct sglist *sgl)
{
 struct hv_sgl_node *sgl_node = ((void*)0);
 if (LIST_EMPTY(&g_hv_sgl_page_pool.in_use_sgl_list)) {
  printf("storvsc error: not enough in use sgl\n");
  return;
 }
 sgl_node = LIST_FIRST(&g_hv_sgl_page_pool.in_use_sgl_list);
 LIST_REMOVE(sgl_node, link);
 sgl_node->sgl_data = sgl;
 LIST_INSERT_HEAD(&g_hv_sgl_page_pool.free_sgl_list, sgl_node, link);
}
