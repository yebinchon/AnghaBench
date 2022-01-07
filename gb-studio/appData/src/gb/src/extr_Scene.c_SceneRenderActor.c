
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UBYTE ;


 int POP_BANK ;
 int PUSH_BANK (int ) ;
 int SceneRenderActor_b (int ) ;
 int scene_bank ;

void SceneRenderActor(UBYTE i)
{
  PUSH_BANK(scene_bank);
  SceneRenderActor_b(i);
  POP_BANK;
}
