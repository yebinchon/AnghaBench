
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int High; int Low; } ;
struct TYPE_3__ {int High; int Low; } ;
typedef int CONFIG_PAGE_FC_PORT_1 ;


 int Flags ;
 int HOST_2_MPT32 (int *,int ) ;
 TYPE_2__ NoSEEPROMWWNN ;
 TYPE_1__ NoSEEPROMWWPN ;

void
host2mpt_config_page_fc_port_1(CONFIG_PAGE_FC_PORT_1 *fp1)
{

 HOST_2_MPT32(fp1, Flags);
 HOST_2_MPT32(fp1, NoSEEPROMWWNN.Low);
 HOST_2_MPT32(fp1, NoSEEPROMWWNN.High);
 HOST_2_MPT32(fp1, NoSEEPROMWWPN.Low);
 HOST_2_MPT32(fp1, NoSEEPROMWWPN.High);
}
