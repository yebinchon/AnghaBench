
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint16_t ;
struct TYPE_3__ {scalar_t__ rdEdge; scalar_t__ twice_rdEdgePower; scalar_t__ flag; } ;
typedef TYPE_1__ RD_EDGES_POWER ;


 int HALASSERT (int) ;
 scalar_t__ MAX_RATE_POWER ;
 int NUM_EDGES ;
 int ar5212GetLowerUpperValues (scalar_t__,scalar_t__*,int,scalar_t__*,scalar_t__*) ;

__attribute__((used)) static uint16_t
ar5212GetMaxEdgePower(uint16_t channel, const RD_EDGES_POWER *pRdEdgesPower)
{

 uint16_t tempChannelList[NUM_EDGES];
 uint16_t clo, chi, twiceMaxEdgePower;
 int i, numEdges;


 for (i = 0; i < NUM_EDGES; i++) {
  if (pRdEdgesPower[i].rdEdge == 0)
   break;
  tempChannelList[i] = pRdEdgesPower[i].rdEdge;
 }
 numEdges = i;

 ar5212GetLowerUpperValues(channel, tempChannelList,
  numEdges, &clo, &chi);

 for (i = 0; i < numEdges && clo != tempChannelList[i]; i++)
  ;

 HALASSERT(i != numEdges);

 if ((clo == chi && clo == channel) || (pRdEdgesPower[i].flag)) {




  twiceMaxEdgePower = pRdEdgesPower[i].twice_rdEdgePower;
  HALASSERT(twiceMaxEdgePower > 0);
 } else
  twiceMaxEdgePower = MAX_RATE_POWER;
 return twiceMaxEdgePower;
}
