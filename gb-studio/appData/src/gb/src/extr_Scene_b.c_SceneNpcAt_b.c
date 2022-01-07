
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ UBYTE ;
typedef int ACTOR ;


 int ACTOR_ENABLED (scalar_t__*) ;
 int ACTOR_X (scalar_t__*) ;
 int ACTOR_Y (scalar_t__*) ;
 scalar_t__ DIV_8 (int ) ;
 scalar_t__* actors ;
 scalar_t__ scene_num_actors ;

UBYTE SceneNpcAt_b(UBYTE index, UBYTE tx_a, UBYTE ty_a)
{
  UBYTE i, tx_b, ty_b, jump;
  UBYTE *ptr;

  ptr = actors;
  jump = sizeof(ACTOR);

  for (i = 0; i != scene_num_actors; i++)
  {
    if (i == index || !ACTOR_ENABLED(ptr))
    {
      ptr += jump;
      continue;
    }
    tx_b = DIV_8(ACTOR_X(ptr));
    ty_b = DIV_8(ACTOR_Y(ptr));
    if (ty_b == 0)
    {


      ty_b = 32;
    }
    if ((ty_a == ty_b || ty_a == ty_b - 1) &&
        (tx_a == tx_b || tx_a == tx_b + 1 || tx_a + 1 == tx_b))
    {
      return i;
    }
    ptr += jump;
  }
  return scene_num_actors;
}
