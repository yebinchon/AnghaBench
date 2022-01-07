
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nicpf {int flags; int check_link_mtx; int check_link; int rss_ind_tbl_size; int reg_base; int node; int dev; } ;
typedef int device_t ;


 int MTX_DEF ;
 int NIC_MAX_RSS_IDR_TBL_SIZE ;
 int NIC_TNS_ENABLED ;
 int callout_init_mtx (int *,int *,int ) ;
 struct nicpf* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 int mtx_init (int *,char*,int *,int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int nic_get_node_id (int ) ;
 int nic_init_hw (struct nicpf*) ;
 int nic_poll_for_link (struct nicpf*) ;
 int nic_register_interrupts (struct nicpf*) ;
 int nic_set_lmac_vf_mapping (struct nicpf*) ;
 int nic_sriov_init (int ,struct nicpf*) ;
 int nic_unregister_interrupts (struct nicpf*) ;
 int nicpf_alloc_res (struct nicpf*) ;
 int nicpf_free_res (struct nicpf*) ;
 int pci_disable_busmaster (int ) ;
 int pci_enable_busmaster (int ) ;

__attribute__((used)) static int
nicpf_attach(device_t dev)
{
 struct nicpf *nic;
 int err;

 nic = device_get_softc(dev);
 nic->dev = dev;


 pci_enable_busmaster(dev);


 err = nicpf_alloc_res(nic);
 if (err != 0) {
  device_printf(dev, "Could not allocate PCI resources\n");
  return (err);
 }

 nic->node = nic_get_node_id(nic->reg_base);


 nic->flags &= ~NIC_TNS_ENABLED;
 nic_set_lmac_vf_mapping(nic);


 nic_init_hw(nic);


 nic->rss_ind_tbl_size = NIC_MAX_RSS_IDR_TBL_SIZE;


 err = nic_register_interrupts(nic);
 if (err != 0)
  goto err_free_res;


 err = nic_sriov_init(dev, nic);
 if (err != 0)
  goto err_free_intr;

 if (nic->flags & NIC_TNS_ENABLED)
  return (0);

 mtx_init(&nic->check_link_mtx, "VNIC PF link poll", ((void*)0), MTX_DEF);

 callout_init_mtx(&nic->check_link, &nic->check_link_mtx, 0);
 mtx_lock(&nic->check_link_mtx);
 nic_poll_for_link(nic);
 mtx_unlock(&nic->check_link_mtx);

 return (0);

err_free_intr:
 nic_unregister_interrupts(nic);
err_free_res:
 nicpf_free_res(nic);
 pci_disable_busmaster(dev);

 return (err);
}
