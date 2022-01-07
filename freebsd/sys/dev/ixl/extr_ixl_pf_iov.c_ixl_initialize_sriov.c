
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ num_msix_vectors_vf; } ;
struct i40e_hw {TYPE_1__ func_caps; } ;
struct ixl_pf {struct i40e_hw hw; int dev; } ;
typedef int nvlist_t ;
typedef int device_t ;


 int FALSE ;
 int IAVF_MAX_QUEUES ;
 int IOV_SCHEMA_HASDEFAULT ;
 int TRUE ;
 int device_printf (int ,char*,...) ;
 int max (int,int ) ;
 int min (scalar_t__,int ) ;
 int pci_iov_attach (int ,int *,int *) ;
 int pci_iov_schema_add_bool (int *,char*,int ,int ) ;
 int pci_iov_schema_add_uint16 (int *,char*,int ,int ) ;
 int pci_iov_schema_add_unicast_mac (int *,char*,int ,int *) ;
 int * pci_iov_schema_alloc_node () ;

void
ixl_initialize_sriov(struct ixl_pf *pf)
{
 device_t dev = pf->dev;
 struct i40e_hw *hw = &pf->hw;
 nvlist_t *pf_schema, *vf_schema;
 int iov_error;

 pf_schema = pci_iov_schema_alloc_node();
 vf_schema = pci_iov_schema_alloc_node();
 pci_iov_schema_add_unicast_mac(vf_schema, "mac-addr", 0, ((void*)0));
 pci_iov_schema_add_bool(vf_schema, "mac-anti-spoof",
     IOV_SCHEMA_HASDEFAULT, TRUE);
 pci_iov_schema_add_bool(vf_schema, "allow-set-mac",
     IOV_SCHEMA_HASDEFAULT, FALSE);
 pci_iov_schema_add_bool(vf_schema, "allow-promisc",
     IOV_SCHEMA_HASDEFAULT, FALSE);
 pci_iov_schema_add_uint16(vf_schema, "num-queues",
     IOV_SCHEMA_HASDEFAULT,
     max(1, min(hw->func_caps.num_msix_vectors_vf - 1, IAVF_MAX_QUEUES)));

 iov_error = pci_iov_attach(dev, pf_schema, vf_schema);
 if (iov_error != 0) {
  device_printf(dev,
      "Failed to initialize SR-IOV (error=%d)\n",
      iov_error);
 } else
  device_printf(dev, "SR-IOV ready\n");
}
