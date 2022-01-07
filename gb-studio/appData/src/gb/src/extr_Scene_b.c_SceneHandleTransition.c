
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IsFading () ;
 int SceneInit () ;
 scalar_t__ scene_index ;
 scalar_t__ scene_next_index ;

void SceneHandleTransition()
{

  if (scene_index != scene_next_index && !IsFading())
  {
    scene_index = scene_next_index;
    SceneInit();
  }
}
