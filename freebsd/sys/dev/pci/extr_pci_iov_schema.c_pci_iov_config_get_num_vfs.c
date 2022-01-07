
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
typedef int nvlist_t ;


 int IOV_CONFIG_NAME ;
 int PF_CONFIG_NAME ;
 int nvlist_get_number (int const*,char*) ;
 int * nvlist_get_nvlist (int const*,int ) ;

uint16_t
pci_iov_config_get_num_vfs(const nvlist_t *config)
{
 const nvlist_t *pf, *iov;

 pf = nvlist_get_nvlist(config, PF_CONFIG_NAME);
 iov = nvlist_get_nvlist(pf, IOV_CONFIG_NAME);
 return (nvlist_get_number(iov, "num_vfs"));
}
