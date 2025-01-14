
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint16_t ;
struct sglist {int sg_maxseg; int sg_nseg; TYPE_1__* sg_segs; } ;
struct hv_sgl_node {struct sglist* sgl_data; } ;
struct TYPE_4__ {int in_use_sgl_list; int free_sgl_list; } ;
struct TYPE_3__ {unsigned int ss_len; } ;


 scalar_t__ LIST_EMPTY (int *) ;
 struct hv_sgl_node* LIST_FIRST (int *) ;
 int LIST_INSERT_HEAD (int *,struct hv_sgl_node*,int ) ;
 int LIST_REMOVE (struct hv_sgl_node*,int ) ;
 unsigned int PAGE_SIZE ;
 int WRITE_TYPE ;
 TYPE_2__ g_hv_sgl_page_pool ;
 int link ;
 int printf (char*) ;

__attribute__((used)) static struct sglist *
storvsc_create_bounce_buffer(uint16_t seg_count, int write)
{
 int i = 0;
 struct sglist *bounce_sgl = ((void*)0);
 unsigned int buf_len = ((write == WRITE_TYPE) ? 0 : PAGE_SIZE);
 struct hv_sgl_node *sgl_node = ((void*)0);


 if (LIST_EMPTY(&g_hv_sgl_page_pool.free_sgl_list)) {
  printf("storvsc error: not enough free sgl\n");
  return ((void*)0);
 }
 sgl_node = LIST_FIRST(&g_hv_sgl_page_pool.free_sgl_list);
 LIST_REMOVE(sgl_node, link);
 bounce_sgl = sgl_node->sgl_data;
 LIST_INSERT_HEAD(&g_hv_sgl_page_pool.in_use_sgl_list, sgl_node, link);

 bounce_sgl->sg_maxseg = seg_count;

 if (write == WRITE_TYPE)
  bounce_sgl->sg_nseg = 0;
 else
  bounce_sgl->sg_nseg = seg_count;

 for (i = 0; i < seg_count; i++)
         bounce_sgl->sg_segs[i].ss_len = buf_len;

 return bounce_sgl;
}
