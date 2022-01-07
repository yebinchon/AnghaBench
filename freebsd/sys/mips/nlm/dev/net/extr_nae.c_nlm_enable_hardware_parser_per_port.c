
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int nlm_setup_l2type (int ,int,int ,int ,int ,int ,int ,int) ;
 int nlm_setup_l3ctable_mask (int ,int,int,int ) ;

void
nlm_enable_hardware_parser_per_port(uint64_t nae_base, int block, int port)
{
 int hwport = (block * 4) + (port & 0x3);



 nlm_setup_l2type(nae_base, hwport, 0, 0, 0, 0, 0, 1);


 nlm_setup_l3ctable_mask(nae_base, hwport, 1, 0);
}
