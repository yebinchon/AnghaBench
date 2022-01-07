
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UBYTE ;


 int POP_BANK ;
 int PUSH_BANK (int ) ;
 int SceneAwaitInputPressed_b () ;
 int scene_bank ;

UBYTE SceneAwaitInputPressed()
{
  UBYTE pressed;
  PUSH_BANK(scene_bank);
  pressed = SceneAwaitInputPressed_b();
  POP_BANK;
  return pressed;
}
