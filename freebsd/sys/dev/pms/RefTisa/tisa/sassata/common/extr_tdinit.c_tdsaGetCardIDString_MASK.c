#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ tdData; } ;
typedef  TYPE_1__ tiRoot_t ;
struct TYPE_7__ {int /*<<< orphan*/  tdsaAllShared; } ;
typedef  TYPE_2__ tdsaRoot_t ;
struct TYPE_8__ {int CardID; int /*<<< orphan*/  CardIDString; } ;
typedef  TYPE_3__ tdsaContext_t ;
typedef  int bit32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int FUNC4 (TYPE_1__*) ; 
 int tiError ; 
 int tiSuccess ; 

bit32 FUNC5(tiRoot_t *tiRoot)
{
  tdsaRoot_t     *tdsaRoot = (tdsaRoot_t *) tiRoot->tdData;
  tdsaContext_t  *tdsaAllShared = (tdsaContext_t *)&(tdsaRoot->tdsaAllShared);
  bit32          ret = tiError;
  bit32          thisCardID = FUNC4(tiRoot);
  char           CardNum[10];
    
  FUNC1(("tdsaGetCardIDString: start\n"));

  FUNC1(("tdsaGetCardIDString: thisCardID 0x%x\n", thisCardID));
  

  if (thisCardID == 0xFFFFFFFF)
  {
    FUNC0(("tdGetCardIDString: No more CardIDs available\n"));
    ret = tiError;
  }
  else
  {
    tdsaAllShared->CardID = thisCardID;
    FUNC2(CardNum,"CardNum%d", thisCardID);
    FUNC1(("tdsaGetCardIDString: CardNum is %s\n", CardNum));  
    FUNC3(tdsaAllShared->CardIDString, CardNum);
    FUNC1(("tdsaGetCardIDString: tdsaAllShared->CardIDString is %s\n", tdsaAllShared->CardIDString));    
    ret = tiSuccess;
  
  }  
  return ret;
}