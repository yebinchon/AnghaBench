
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UBYTE ;


 int ACTOR_X (int*) ;
 int ACTOR_Y (int*) ;
 int DIV_8 (int ) ;
 scalar_t__ actors ;

UBYTE ScenePlayerAt_b(UBYTE tx_a, UBYTE ty_a)
{
  UBYTE tx_b, ty_b;
  tx_b = DIV_8(ACTOR_X((UBYTE *)actors));
  ty_b = DIV_8(ACTOR_Y((UBYTE *)actors));
  if ((ty_a == ty_b || ty_a == ty_b - 1) &&
      (tx_a == tx_b || tx_a == tx_b + 1 || tx_a + 1 == tx_b))
  {
    return 1;
  }
  else
  {
    return 0;
  }
}
