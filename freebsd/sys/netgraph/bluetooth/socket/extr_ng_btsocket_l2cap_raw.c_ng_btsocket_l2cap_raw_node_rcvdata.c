
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int item_p ;
typedef int hook_p ;


 int EINVAL ;
 int NG_FREE_ITEM (int ) ;

__attribute__((used)) static int
ng_btsocket_l2cap_raw_node_rcvdata(hook_p hook, item_p item)
{
 NG_FREE_ITEM(item);

 return (EINVAL);
}
