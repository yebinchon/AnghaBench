
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CONFIG_PAGE_IOC_3 ;


 int MPT_2_HOST16 (int *,int ) ;
 int Reserved2 ;

void
mpt2host_config_page_ioc3(CONFIG_PAGE_IOC_3 *ioc3)
{

 MPT_2_HOST16(ioc3, Reserved2);
}
