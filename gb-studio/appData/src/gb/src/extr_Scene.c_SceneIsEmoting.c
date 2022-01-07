
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UBYTE ;


 int POP_BANK ;
 int PUSH_BANK (int ) ;
 int SceneIsEmoting_b () ;
 int scene_bank ;

UBYTE SceneIsEmoting()
{
  UBYTE is_emoting;
  PUSH_BANK(scene_bank);
  is_emoting = SceneIsEmoting_b();
  POP_BANK;
  return is_emoting;
}
