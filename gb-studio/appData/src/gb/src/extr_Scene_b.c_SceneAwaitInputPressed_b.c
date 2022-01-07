
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UBYTE ;


 int ACTOR_ON_TILE (int ) ;
 int FALSE ;
 int await_input ;
 scalar_t__ fade_running ;
 int joy ;
 int scene_input_ready ;
 int scene_loaded ;

UBYTE SceneAwaitInputPressed_b()
{

  if (!scene_loaded || !scene_input_ready || !ACTOR_ON_TILE(0) || fade_running)
  {
    return FALSE;
  }

  return ((joy & await_input) != 0);
}
