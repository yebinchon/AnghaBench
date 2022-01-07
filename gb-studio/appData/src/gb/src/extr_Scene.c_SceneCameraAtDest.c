
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UBYTE ;


 int POP_BANK ;
 int PUSH_BANK (int ) ;
 int SceneCameraAtDest_b () ;
 int scene_bank ;

UBYTE SceneCameraAtDest()
{
  UBYTE at_dest;
  PUSH_BANK(scene_bank);
  at_dest = SceneCameraAtDest_b();
  POP_BANK;
  return at_dest;
}
