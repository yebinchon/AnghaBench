#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  device_t ;
typedef  int /*<<< orphan*/  ag_card_info_t ;

/* Variables and functions */
 int AGTIAPI_MAX_CARDS ; 
 int BUS_PROBE_DEFAULT ; 
 int ENXIO ; 
 int /*<<< orphan*/ * agCardInfoList ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC3( device_t dev )
{
  int retVal;
  int thisCard;
  ag_card_info_t *thisCardInst;

  thisCard = FUNC1( dev );
  if ( thisCard >= AGTIAPI_MAX_CARDS ) 
  {
    FUNC2( dev, "Too many PMC-Sierra cards detected ERROR!\n" );
    return (ENXIO); // maybe change to different return value?
  }
  thisCardInst = &agCardInfoList[ thisCard ];
  retVal = FUNC0( dev, thisCardInst, thisCard );
  if ( retVal )
    return (ENXIO); // maybe change to different return value?
  return( BUS_PROBE_DEFAULT );  // successful probe
}