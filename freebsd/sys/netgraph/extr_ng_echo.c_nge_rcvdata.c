
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int item_p ;
typedef int hook_p ;


 int NG_FWD_ITEM_HOOK (int,int ,int ) ;

__attribute__((used)) static int
nge_rcvdata(hook_p hook, item_p item)
{
 int error;

 NG_FWD_ITEM_HOOK(error, item, hook);
 return (error);
}
