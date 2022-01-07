
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t uint16_t ;
typedef int sysctl_name ;
struct TYPE_2__ {int ftl; struct ixl_pf* back; } ;
struct ixl_vf {size_t vf_num; int ctx; TYPE_1__ vsi; int vf_flags; int mac; } ;
struct ixl_pf {struct ixl_vf* vfs; int dev; } ;
typedef int nvlist_t ;
typedef int if_ctx_t ;
typedef int device_t ;


 int ETHER_ADDR_LEN ;
 int QUEUE_NAME_LEN ;
 int SLIST_INIT (int *) ;
 int VF_FLAG_ENABLED ;
 int VF_FLAG_MAC_ANTI_SPOOF ;
 int VF_FLAG_PROMISC_CAP ;
 int VF_FLAG_SET_MAC_CAP ;
 int VF_FLAG_VLAN_CAP ;
 int bcopy (void const*,int ,int ) ;
 struct ixl_pf* iflib_get_softc (int ) ;
 int ixl_add_vsi_sysctls (int ,TYPE_1__*,int *,char*) ;
 int ixl_reset_vf (struct ixl_pf*,struct ixl_vf*) ;
 int ixl_vf_reserve_queues (struct ixl_pf*,struct ixl_vf*,int) ;
 int ixl_vf_setup_vsi (struct ixl_pf*,struct ixl_vf*) ;
 scalar_t__ nvlist_exists_binary (int const*,char*) ;
 void* nvlist_get_binary (int const*,char*,size_t*) ;
 scalar_t__ nvlist_get_bool (int const*,char*) ;
 int nvlist_get_number (int const*,char*) ;
 int snprintf (char*,int,char*,size_t) ;

int
ixl_if_iov_vf_add(if_ctx_t ctx, uint16_t vfnum, const nvlist_t *params)
{
 struct ixl_pf *pf = iflib_get_softc(ctx);
 device_t dev = pf->dev;
 char sysctl_name[QUEUE_NAME_LEN];
 struct ixl_vf *vf;
 const void *mac;
 size_t size;
 int error;
 int vf_num_queues;

 vf = &pf->vfs[vfnum];
 vf->vf_num = vfnum;
 vf->vsi.back = pf;
 vf->vf_flags = VF_FLAG_ENABLED;
 SLIST_INIT(&vf->vsi.ftl);


 vf_num_queues = nvlist_get_number(params, "num-queues");
 error = ixl_vf_reserve_queues(pf, vf, vf_num_queues);
 if (error != 0)
  goto out;

 error = ixl_vf_setup_vsi(pf, vf);
 if (error != 0)
  goto out;

 if (nvlist_exists_binary(params, "mac-addr")) {
  mac = nvlist_get_binary(params, "mac-addr", &size);
  bcopy(mac, vf->mac, ETHER_ADDR_LEN);

  if (nvlist_get_bool(params, "allow-set-mac"))
   vf->vf_flags |= VF_FLAG_SET_MAC_CAP;
 } else




  vf->vf_flags |= VF_FLAG_SET_MAC_CAP;

 if (nvlist_get_bool(params, "mac-anti-spoof"))
  vf->vf_flags |= VF_FLAG_MAC_ANTI_SPOOF;

 if (nvlist_get_bool(params, "allow-promisc"))
  vf->vf_flags |= VF_FLAG_PROMISC_CAP;

 vf->vf_flags |= VF_FLAG_VLAN_CAP;


 ixl_reset_vf(pf, vf);
out:
 if (error == 0) {
  snprintf(sysctl_name, sizeof(sysctl_name), "vf%d", vfnum);
  ixl_add_vsi_sysctls(dev, &vf->vsi, &vf->ctx, sysctl_name);
 }

 return (error);
}
