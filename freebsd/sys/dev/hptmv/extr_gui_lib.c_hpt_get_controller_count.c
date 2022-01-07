
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct TYPE_3__* next; } ;
typedef TYPE_1__ IAL_ADAPTER_T ;


 TYPE_1__* gIal_Adapter ;

int hpt_get_controller_count(void)
{
 IAL_ADAPTER_T *pAdapTemp = gIal_Adapter;
 int iControllerCount = 0;

 while(pAdapTemp != ((void*)0))
 {
  iControllerCount++;
  pAdapTemp = pAdapTemp->next;
 }

 return iControllerCount;
}
