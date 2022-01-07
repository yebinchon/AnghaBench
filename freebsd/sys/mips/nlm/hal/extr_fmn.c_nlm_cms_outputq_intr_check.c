
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int CMS_OUTPUTQ_CONFIG (int) ;
 int nlm_read_cms_reg (int,int ) ;

int nlm_cms_outputq_intr_check(uint64_t base, int qid)
{
 uint64_t val;
 val = nlm_read_cms_reg(base, CMS_OUTPUTQ_CONFIG(qid));

 return ((val >> 59) & 0x1);
}
