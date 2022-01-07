
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int CMS_OUTPUTQ_CONFIG (int) ;
 int nlm_read_cms_reg (int ,int ) ;
 int nlm_write_cms_reg (int ,int ,int ) ;

void nlm_cms_set_onchip_queue (uint64_t base, int qid, uint64_t val)
{
 uint64_t rdval;

 rdval = nlm_read_cms_reg(base, CMS_OUTPUTQ_CONFIG(qid));
 rdval |= val;
 nlm_write_cms_reg(base, CMS_OUTPUTQ_CONFIG(qid), rdval);
}
