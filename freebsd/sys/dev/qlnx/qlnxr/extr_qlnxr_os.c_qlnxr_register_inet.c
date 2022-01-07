
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int notifier_call; } ;
struct qlnxr_dev {int ha; TYPE_1__ nb_inet; } ;


 int QL_DPRINT12 (int ,char*) ;
 int qlnxr_inetaddr_event ;
 int register_inetaddr_notifier (TYPE_1__*) ;

__attribute__((used)) static int
qlnxr_register_inet(struct qlnxr_dev *dev)
{
 int ret;
 dev->nb_inet.notifier_call = qlnxr_inetaddr_event;
 ret = register_inetaddr_notifier(&dev->nb_inet);
 if (ret) {
  QL_DPRINT12(dev->ha, "Failed to register inetaddr\n");
  return ret;
 }

 return 0;
}
