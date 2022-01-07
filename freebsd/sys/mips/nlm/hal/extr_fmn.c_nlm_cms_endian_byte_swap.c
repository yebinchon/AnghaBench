
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int CMS_MSG_ENDIAN_SWAP ;
 int nlm_write_cms_reg (int ,int ,int) ;

void nlm_cms_endian_byte_swap (uint64_t base, int en)
{
 nlm_write_cms_reg(base, CMS_MSG_ENDIAN_SWAP, en);
}
