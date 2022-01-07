
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct ib_device {int dev; } ;
struct cm_work {TYPE_4__* mad_recv_wc; TYPE_2__* port; } ;
struct TYPE_8__ {TYPE_3__* wc; } ;
struct TYPE_7__ {int pkey_index; } ;
struct TYPE_6__ {int port_num; TYPE_1__* cm_dev; } ;
struct TYPE_5__ {struct ib_device* ib_device; } ;


 int dev_warn_ratelimited (int *,char*,int ,int ,int) ;
 int ib_get_cached_pkey (struct ib_device*,int ,int ,int *) ;

__attribute__((used)) static u16 cm_get_bth_pkey(struct cm_work *work)
{
 struct ib_device *ib_dev = work->port->cm_dev->ib_device;
 u8 port_num = work->port->port_num;
 u16 pkey_index = work->mad_recv_wc->wc->pkey_index;
 u16 pkey;
 int ret;

 ret = ib_get_cached_pkey(ib_dev, port_num, pkey_index, &pkey);
 if (ret) {
  dev_warn_ratelimited(&ib_dev->dev, "ib_cm: Couldn't retrieve pkey for incoming request (port %d, pkey index %d). %d\n",
         port_num, pkey_index, ret);
  return 0;
 }

 return pkey;
}
