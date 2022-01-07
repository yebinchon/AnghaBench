
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int CMS_OUTPUTQ_CONFIG (int) ;
 int nlm_read_cms_reg (int,int ) ;
 int nlm_write_cms_reg (int,int ,int) ;

void nlm_cms_per_queue_timer_intr(uint64_t base, int qid, int sub_type,
     int intr_val)
{
 uint64_t val;

 val = nlm_read_cms_reg(base, CMS_OUTPUTQ_CONFIG(qid));

 val &= ~((0x7ULL << 51) | (0x3ULL << 49));

 val |= (((uint64_t)sub_type<<49) |
  ((uint64_t)intr_val<<51));

 nlm_write_cms_reg(base, CMS_OUTPUTQ_CONFIG(qid), val);
}
