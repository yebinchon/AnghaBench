
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* ng_l2cap_p ;
struct TYPE_3__ {int chan_list; } ;


 int LIST_EMPTY (int *) ;
 int LIST_FIRST (int *) ;
 int ng_l2cap_free_chan (int ) ;

__attribute__((used)) static void
ng_l2cap_destroy_channels(ng_l2cap_p l2cap)
{
 while (!LIST_EMPTY(&l2cap->chan_list))
  ng_l2cap_free_chan(LIST_FIRST(&l2cap->chan_list));
}
