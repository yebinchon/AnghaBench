
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UBYTE ;


 int POP_BANK ;
 int PUSH_BANK (int ) ;
 int SceneSetEmote_b (int ,int ) ;
 int scene_bank ;

void SceneSetEmote(UBYTE actor, UBYTE type)
{
  PUSH_BANK(scene_bank);
  SceneSetEmote_b(actor, type);
  POP_BANK;
}
