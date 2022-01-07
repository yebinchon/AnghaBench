
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mbuf {int dummy; } ;
struct epoch_tracker {int dummy; } ;
typedef int item_p ;
typedef int hook_p ;
struct TYPE_2__ {scalar_t__ td_ng_outbound; } ;


 int NETISR_IP ;
 int NET_EPOCH_ENTER (struct epoch_tracker) ;
 int NET_EPOCH_EXIT (struct epoch_tracker) ;
 int NGI_GET_M (int ,struct mbuf*) ;
 int NG_FREE_ITEM (int ) ;
 TYPE_1__* curthread ;
 int netisr_dispatch (int ,struct mbuf*) ;
 int netisr_queue (int ,struct mbuf*) ;

__attribute__((used)) static int
ngipi_rcvdata(hook_p hook, item_p item)
{
 struct mbuf *m;

 NGI_GET_M(item, m);
 NG_FREE_ITEM(item);
 if (curthread->td_ng_outbound)
  netisr_queue(NETISR_IP, m);
 else {
  struct epoch_tracker et;

  NET_EPOCH_ENTER(et);
  netisr_dispatch(NETISR_IP, m);
  NET_EPOCH_EXIT(et);
 }
 return 0;
}
