
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int ;
struct ath_hal {int dummy; } ;
typedef int RD_EDGES_POWER ;


 int * AH_NULL ;
 int NUM_EDGES ;
 scalar_t__* _ctl ;
 int _numCtls ;
 int * _rdEdgesPower ;

__attribute__((used)) static RD_EDGES_POWER*
findEdgePower(struct ath_hal *ah, u_int ctl)
{
 int i;

 for (i = 0; i < _numCtls; i++)
  if (_ctl[i] == ctl)
   return &_rdEdgesPower[i * NUM_EDGES];
 return AH_NULL;
}
