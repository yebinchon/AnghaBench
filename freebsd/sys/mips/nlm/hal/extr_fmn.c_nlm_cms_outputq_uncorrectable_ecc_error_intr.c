
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int CMS_MSG_CONFIG ;
 int nlm_read_cms_reg (int,int ) ;
 int nlm_write_cms_reg (int,int ,int) ;

void nlm_cms_outputq_uncorrectable_ecc_error_intr(uint64_t base, int en)
{
 uint64_t val;

 val = nlm_read_cms_reg(base, CMS_MSG_CONFIG);
 val |= (en<<1);
 nlm_write_cms_reg(base, CMS_MSG_CONFIG, val);
}
