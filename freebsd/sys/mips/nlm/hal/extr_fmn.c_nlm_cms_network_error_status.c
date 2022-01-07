
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int CMS_MSG_ERR ;
 int nlm_read_cms_reg (int ,int ) ;

uint64_t nlm_cms_network_error_status(uint64_t base)
{
 return nlm_read_cms_reg(base, CMS_MSG_ERR);
}
