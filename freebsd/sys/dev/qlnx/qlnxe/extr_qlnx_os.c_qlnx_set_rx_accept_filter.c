
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct ecore_filter_accept_flags {int update_rx_mode_config; int update_tx_mode_config; int tx_accept_filter; int rx_accept_filter; } ;
struct ecore_dev {int dummy; } ;
struct TYPE_3__ {struct ecore_dev cdev; } ;
typedef TYPE_1__ qlnx_host_t ;


 int ECORE_ACCEPT_BCAST ;
 int ECORE_ACCEPT_MCAST_MATCHED ;
 int ECORE_ACCEPT_UCAST_MATCHED ;
 int ECORE_SPQ_MODE_CB ;
 int bzero (struct ecore_filter_accept_flags*,int) ;
 int ecore_filter_accept_cmd (struct ecore_dev*,int ,struct ecore_filter_accept_flags,int,int,int ,int *) ;

__attribute__((used)) static int
qlnx_set_rx_accept_filter(qlnx_host_t *ha, uint8_t filter)
{
 struct ecore_filter_accept_flags accept;
 int rc = 0;
 struct ecore_dev *cdev;

 cdev = &ha->cdev;

 bzero(&accept, sizeof(struct ecore_filter_accept_flags));

 accept.update_rx_mode_config = 1;
 accept.rx_accept_filter = filter;

 accept.update_tx_mode_config = 1;
 accept.tx_accept_filter = ECORE_ACCEPT_UCAST_MATCHED |
  ECORE_ACCEPT_MCAST_MATCHED | ECORE_ACCEPT_BCAST;

 rc = ecore_filter_accept_cmd(cdev, 0, accept, 0, 0,
   ECORE_SPQ_MODE_CB, ((void*)0));

 return (rc);
}
