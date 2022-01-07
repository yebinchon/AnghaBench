
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int nlm_cms_per_queue_level_intr (int ,int,int,int) ;
 int nlm_cms_per_queue_timer_intr (int ,int,int,int ) ;
 int nlm_get_cms_regbase (int) ;

void
xlp_cms_enable_intr(int node, int cpu, int type, int watermark)
{
 uint64_t cmsbase;
 int i, qid;

 cmsbase = nlm_get_cms_regbase(node);

 for (i = 0; i < 4; i++) {
  qid = (i + (cpu * 4)) & 0x7f;
  nlm_cms_per_queue_level_intr(cmsbase, qid, type, watermark);
  nlm_cms_per_queue_timer_intr(cmsbase, qid, 0x1, 0);
 }
}
