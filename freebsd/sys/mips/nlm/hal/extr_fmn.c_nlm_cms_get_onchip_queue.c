
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int CMS_OUTPUTQ_CONFIG (int) ;
 int nlm_read_cms_reg (int ,int ) ;

uint64_t nlm_cms_get_onchip_queue (uint64_t base, int qid)
{
 return nlm_read_cms_reg(base, CMS_OUTPUTQ_CONFIG(qid));
}
