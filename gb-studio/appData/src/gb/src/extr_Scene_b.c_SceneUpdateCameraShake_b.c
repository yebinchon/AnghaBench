
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TRUE ;
 int script_action_complete ;
 scalar_t__ shake_time ;

void SceneUpdateCameraShake_b()
{

  if (shake_time != 0)
  {
    shake_time--;
    if (shake_time == 0)
    {
      script_action_complete = TRUE;
    }
  }
}
