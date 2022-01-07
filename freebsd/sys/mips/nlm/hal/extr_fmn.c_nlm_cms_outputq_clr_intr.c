
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long long uint64_t ;


 int CMS_OUTPUTQ_CONFIG (int) ;
 unsigned long long nlm_read_cms_reg (unsigned long long,int ) ;
 int nlm_write_cms_reg (unsigned long long,int ,unsigned long long) ;

void nlm_cms_outputq_clr_intr(uint64_t base, int qid)
{
 uint64_t val;
 val = nlm_read_cms_reg(base, CMS_OUTPUTQ_CONFIG(qid));
 val |= (1ULL<<59);
 nlm_write_cms_reg(base, CMS_OUTPUTQ_CONFIG(qid), val);
}
