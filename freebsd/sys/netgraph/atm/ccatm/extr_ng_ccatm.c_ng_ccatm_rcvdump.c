
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int item_p ;
typedef int hook_p ;


 int NG_FREE_ITEM (int ) ;

__attribute__((used)) static int
ng_ccatm_rcvdump(hook_p hook, item_p item)
{
 NG_FREE_ITEM(item);
 return (0);
}
