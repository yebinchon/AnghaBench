
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int CMS_OUTPUTQ_CREDIT_CFG ;
 int nlm_write_cms_reg (int,int ,int) ;

void nlm_cms_setup_credits(uint64_t base, int destid, int srcid, int credit)
{
 uint64_t val;

 val = (((uint64_t)credit << 24) | (destid << 12) | (srcid << 0));
 nlm_write_cms_reg(base, CMS_OUTPUTQ_CREDIT_CFG, val);

}
