
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ uint32_t ;
struct ecore_filter_mcast {int num_mc_addrs; int mac; int opcode; } ;
struct ecore_dev {int dummy; } ;
struct TYPE_3__ {struct ecore_filter_mcast ecore_mcast; struct ecore_dev cdev; } ;
typedef TYPE_1__ qlnx_host_t ;


 int ECORE_FILTER_ADD ;
 int ECORE_FILTER_REMOVE ;
 int ECORE_SPQ_MODE_CB ;
 int ETH_ALEN ;
 int bzero (struct ecore_filter_mcast*,int) ;
 int ecore_filter_mcast_cmd (struct ecore_dev*,struct ecore_filter_mcast*,int ,int *) ;
 int memcpy (int ,int *,int ) ;

__attribute__((used)) static int
qlnx_config_mcast_mac_addr(qlnx_host_t *ha, uint8_t *mac_addr, uint32_t add_mac)
{
 struct ecore_filter_mcast *mcast;
 struct ecore_dev *cdev;
 int rc;

 cdev = &ha->cdev;

 mcast = &ha->ecore_mcast;
 bzero(mcast, sizeof(struct ecore_filter_mcast));

 if (add_mac)
  mcast->opcode = ECORE_FILTER_ADD;
 else
  mcast->opcode = ECORE_FILTER_REMOVE;

 mcast->num_mc_addrs = 1;
 memcpy(mcast->mac, mac_addr, ETH_ALEN);

 rc = ecore_filter_mcast_cmd(cdev, mcast, ECORE_SPQ_MODE_CB, ((void*)0));

 return (rc);
}
