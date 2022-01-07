
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct ecore_filter_ucast {int is_rx_filter; int type; int opcode; } ;
struct ecore_dev {int dummy; } ;
struct TYPE_3__ {struct ecore_dev cdev; } ;
typedef TYPE_1__ qlnx_host_t ;


 int ECORE_FILTER_MAC ;
 int ECORE_FILTER_REPLACE ;
 int ECORE_SPQ_MODE_CB ;
 int bzero (struct ecore_filter_ucast*,int) ;
 int ecore_filter_ucast_cmd (struct ecore_dev*,struct ecore_filter_ucast*,int ,int *) ;

__attribute__((used)) static int
qlnx_remove_all_ucast_mac(qlnx_host_t *ha)
{
 struct ecore_filter_ucast ucast;
 struct ecore_dev *cdev;
 int rc;

 bzero(&ucast, sizeof(struct ecore_filter_ucast));

 ucast.opcode = ECORE_FILTER_REPLACE;
 ucast.type = ECORE_FILTER_MAC;
 ucast.is_rx_filter = 1;

 cdev = &ha->cdev;

 rc = ecore_filter_ucast_cmd(cdev, &ucast, ECORE_SPQ_MODE_CB, ((void*)0));

 return (rc);
}
