
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {int dummy; } ;
struct net_device {int dummy; } ;






 int NOTIFY_DONE ;
 int roce_gid_delete_all_event (struct net_device*) ;
 int roce_gid_queue_scan_event (struct net_device*) ;

__attribute__((used)) static int
inetaddr_event(struct notifier_block *this, unsigned long event, void *ptr)
{
 struct net_device *ndev = ptr;

 switch (event) {
 case 128:
  roce_gid_delete_all_event(ndev);
  break;
 case 129:
 case 131:
 case 130:
  roce_gid_queue_scan_event(ndev);
  break;
 default:
  break;
 }
 return NOTIFY_DONE;
}
