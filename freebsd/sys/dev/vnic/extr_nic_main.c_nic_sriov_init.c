
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint16_t ;
struct nicpf {int dummy; } ;
typedef int nvlist_t ;
typedef int device_t ;


 int ENXIO ;
 int IOV_SCHEMA_HASDEFAULT ;
 scalar_t__ PCIR_SRIOV_TOTAL_VFS ;
 int PCIZ_SRIOV ;
 int TRUE ;
 int device_printf (int ,char*,...) ;
 int pci_find_extcap (int ,int ,int*) ;
 int pci_iov_attach (int ,int *,int *) ;
 int pci_iov_schema_add_bool (int *,char*,int ,int ) ;
 int pci_iov_schema_add_unicast_mac (int *,char*,int ,int *) ;
 int * pci_iov_schema_alloc_node () ;
 scalar_t__ pci_read_config (int ,scalar_t__,int) ;

__attribute__((used)) static int nic_sriov_init(device_t dev, struct nicpf *nic)
{
 return (0);
}
