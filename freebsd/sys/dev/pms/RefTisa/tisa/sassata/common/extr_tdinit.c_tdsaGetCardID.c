
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tiRoot_t ;
typedef size_t bit32 ;


 scalar_t__ TD_CARD_ID_ALLOC ;
 scalar_t__ TD_CARD_ID_FREE ;
 size_t TD_MAX_CARD_NUM ;
 scalar_t__* tdCardIDList ;

bit32 tdsaGetCardID(tiRoot_t * tiRoot)
{
  bit32 i;
  bit32 RetVal = 0xFFFFFFFF;

  for (i = 0 ; i < TD_MAX_CARD_NUM ; i++)
  {
    if (tdCardIDList[i] == TD_CARD_ID_FREE)
    {
      tdCardIDList[i] = TD_CARD_ID_ALLOC;
      RetVal = i;
      break;
    }
  }

  return RetVal;

}
