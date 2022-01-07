
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int POP_BANK ;
 int PUSH_BANK (int ) ;
 int SceneUpdate_b () ;
 int scene_bank ;

void SceneUpdate()
{
  PUSH_BANK(scene_bank);
  SceneUpdate_b();
  POP_BANK;
}
